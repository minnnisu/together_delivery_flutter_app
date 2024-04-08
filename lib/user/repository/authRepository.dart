import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;
import 'package:together_delivery_app/constant/errorCode.dart';
import 'package:together_delivery_app/exception/customException.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/user/model/loginRequest.dart';

import '../../constant/const.dart';
import '../../providers/dioProvider.dart';
import '../../secureStore/secureStore.dart';
import '../model/loginResponse.dart';
import '../model/tokenResponse.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = Dio(); // onError의 재귀적 호출을 막기위해 dioProvier 대신 새로운 인스턴스을 의존성으로 주입
  final storage = ref.read(secureStorageProvider);

  return AuthRepository(
    dio: dio,
    storage: storage,
  );
});

class AuthRepository {
  final Dio dio;
  final fss.FlutterSecureStorage storage;

  AuthRepository({
    required this.dio,
    required this.storage,
  });

  Future<LoginResponse> login({
    required String username,
    required String password,
  }) async {
    LoginRequest loginRequest =
        LoginRequest(username: username, password: password);

    final response = await dio.post(apiUrls.login, data: loginRequest.toJson());
    return LoginResponse.fromJson(response.data);
  }

  Future<TokenResponse> token() async {
    final accessToken = await storage.read(key: accessTokenKey);
    final refreshToken = await storage.read(key: refreshTokenKey);

    if (accessToken == null || refreshToken == null) {
      throw CustomException(errorCode: ErrorCode.NO_TOKEN_ERROR);
    }

      print("""
      Bearer $accessToken
      Bearer $refreshToken
      """);
      final response = await dio.post(
        apiUrls.tokenRefresh,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'Authorization-refresh': 'Bearer $refreshToken',
          },
        ),
      );
      return TokenResponse.fromJson(response.data);
  }

  Future<void> logout() async {
    final accessToken = await storage.read(key: accessTokenKey);
    final refreshToken = await storage.read(key: refreshTokenKey);

    if (accessToken == null || refreshToken == null) {
      return;
    }

    await dio.post(
      apiUrls.logout,
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Authorization-refresh': 'Bearer $refreshToken',
        },
      ),
    );
  }
}
