import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    as fss; // dio와 충돌하는 부분이 발생하여 별칭 지정(Options에서 충볼 발생)
import 'package:together_delivery_app/common/const/const.dart';
import 'package:together_delivery_app/user/model/token/tokenResponse.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

import '../secureStore/secureStore.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  final storage = ref.watch(secureStorageProvider);

  dio.interceptors.add(
    CustomInterceptor(storage: storage, ref: ref),
  );

  return dio;
});

class CustomInterceptor extends Interceptor {
  final Ref ref;
  final fss.FlutterSecureStorage storage;

  CustomInterceptor({
    required this.ref,
    required this.storage,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers['accessToken'] == 'true') {
      // accessToken이 필요한 요청
      options.headers.remove('accessToken');

      final accessToken = await storage.read(key: accessTokenKey);
      options.headers.addAll({
        'authorization': 'Bearer $accessToken',
      });
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.data["errorCode"] == 'NotValidAccessTokenError') {
      await ref.read(authProvider.notifier).logout(); // 강제 로그아웃

      return handler.reject(err); // NotValidAccessTokenError
    }

    if (err.response?.data["errorCode"] == 'ExpiredAccessTokenError') {
      print("토큰이 만료됨");
      try {
        TokenResponse tokenResponse =
            await ref.read(authProvider.notifier).token(); // 토큰 재발급
        final accessToken = tokenResponse.accessToken;

        final options = err.requestOptions;

        print("토큰 재발급 됨");

        // 요청의 헤더에 새로 발급받은 accessToken으로 변경하기
        options.headers.addAll({
          'Authorization': 'Bearer $accessToken',
        });

        await storage.write(key: accessTokenKey, value: accessToken);

        Dio dio = Dio();

        if (options.data is FormData) {
          options.data = (options.data as FormData).clone();

          final newResponse = await dio.fetch(options);
          print("원래 요청 전송");
          return handler.resolve(newResponse);
        }

        final newResponse = await dio.fetch(options);
        print("원래 요청 전송");
        return handler.resolve(newResponse);
      } catch (e) {
        print("에러 내용: ${e.toString()}");
        await ref.read(authProvider.notifier).logout(); // 강제 로그아웃
      }

      return handler.reject(err); // ExpiredAccessTokenError
    }

    return handler.reject(err);
  }
}
