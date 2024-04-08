import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    as fss; // dio와 충돌하는 부분이 발생하여 별칭 지정(Options에서 충볼 발생)
import 'package:together_delivery_app/constant/errorCode.dart';
import 'package:together_delivery_app/exception/customException.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/user/model/tokenResponse.dart';

import '../constant/const.dart';
import '../secureStore/secureStore.dart';
import '../user/provider/authNotifier.dart';

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

    // if (options.headers['refreshToken'] == 'true') {
    //   // refreshToken이 필요한 요청
    //   options.headers.remove('refreshToken');
    //
    //   final refreshToken = await storage.read(key: refreshTokenKey);
    //   options.headers.addAll({
    //     'authorization': 'Bearer $refreshToken',
    //   });
    // }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.data["errorCode"] == 'NotValidAccessTokenError') {
      await ref.read(authProvider.notifier).logout(); // 강제 로그아웃

      return handler.reject(err); // NotValidAccessTokenError
    }

    if (err.response?.data["errorCode"] == 'ExpiredAccessTokenError') {
      try {
        TokenResponse tokenResponse =
            await ref.read(authProvider.notifier).token(); // 토큰 재발급
        final accessToken = tokenResponse.accessToken;

        final options = err.requestOptions;

        // 요청의 헤더에 새로 발급받은 accessToken으로 변경하기
        options.headers.addAll({
          'authorization': 'Bearer $accessToken',
        });

        await storage.write(key: accessTokenKey, value: accessToken);

        Dio dio = Dio();
        // 원래 보내려던 요청 재전송
        final newResponse = await dio.fetch(options);

        return handler.resolve(newResponse);
      } catch (e) {
        await ref.read(authProvider.notifier).logout(); // 강제 로그아웃
      }

      return handler.reject(err); // ExpiredAccessTokenError
    }

    return handler.reject(err);
  }
}
