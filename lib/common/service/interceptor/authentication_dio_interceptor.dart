import 'package:dio/dio.dart';

import '../../../auth/model/model/token/token_reissue_response_model.dart';
import '../../config/api_url.dart';
import '../../const/token_type.dart';
import '../../exception/error_code.dart';
import '../local_service.dart';

class AuthenticationDioInterceptor extends Interceptor {
  final LocalService localService;
  Dio dio = Dio();

  AuthenticationDioInterceptor(this.localService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = await localService.getValue(TokenType.accessToken.name) as String?;

    if (accessToken != null) {
      options.headers.addAll({
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      });
    }

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      bool tokenRefreshed = await refreshToken(err, handler);

      if (tokenRefreshed) {
        try {
          var response = await _retry(err.requestOptions);
          handler.resolve(response);
        } on DioException catch (e) {
          // 재시도 실패, 에러 전달
          handler.next(e);
        }
      }
    } else {
      // 401 이외의 에러에 대해서는 기본 에러 처리
      handler.next(err);
    }
  }

  Future<bool> refreshToken(DioException error, ErrorInterceptorHandler handler) async {
    try {
      String? accessToken = await localService.getValue(TokenType.accessToken.name) as String?;
      String? refreshToken = await localService.getValue(TokenType.refreshToken.name) as String?;

      if (accessToken == null || refreshToken == null) {
        // 토큰이 없으면 실패 처리
        handler.next(
          DioException(
            requestOptions: error.requestOptions,
            error: ErrorCode.TokenReissueError,
            type: DioExceptionType.unknown,
          ),
        );
        return false;
      }

      // 토큰 재발급 요청
      var response = await dio.post(
        ApiUrl.tokenReissue,
        options: Options(
          headers: {
            "Authorization": "Bearer $accessToken",
            "Authorization-refresh": "Bearer $refreshToken",
          },
        ),
      );

      var responseModel = TokenReissueResponseModel.fromJson(response.data);
      // 새 토큰 저장
      await localService.save(TokenType.accessToken.name, responseModel.accessToken);
      return true;
    } on DioException catch (e) {
      // 토큰 재발급 실패 처리
      if (e.response?.statusCode == 401 || e.response?.statusCode == 404) {
        // 재발급 실패 시 토큰 삭제
        await localService.delete(TokenType.accessToken.name);
        await localService.delete(TokenType.refreshToken.name);

        handler.next(
          DioException(
            requestOptions: e.requestOptions,
            error: ErrorCode.TokenReissueError,
            type: DioExceptionType.unknown,
          ),
        );
      } else {
        // 다른 에러는 원래의 에러로 처리
        handler.next(error);
      }
      return false;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    String? accessToken =
    await localService.getValue(TokenType.accessToken.name) as String?;

    requestOptions.headers.addAll({
      "Authorization": "Bearer $accessToken",
    });

    requestOptions.copyWith(headers: requestOptions.headers);
    return await dio.fetch(requestOptions);
  }
}
