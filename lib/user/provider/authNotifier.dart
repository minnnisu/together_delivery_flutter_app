import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:together_delivery_app/common/const/const.dart';
import 'package:together_delivery_app/common/secureStore/secureStore.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/repository/authRepository.dart';
import 'package:together_delivery_app/user/repository/userMeRepository.dart';

import '../model/token/tokenResponse.dart';

class AuthNotifier extends StateNotifier<UserModelBase?> {
  final AuthRepository authRepository;
  final UserMeRepository userMeRepository;
  final FlutterSecureStorage storage;

  AuthNotifier({
    required this.authRepository,
    required this.userMeRepository,
    required this.storage,
  }) : super(null);

  void updateStateNull() {
    Future.value(null);
  }

  Future<UserModelBase> login({
    required String username,
    required String password,
  }) async {
    try {
      state = UserModelLoading(); // 로그인 중

      final response = await authRepository.login(
        username: username,
        password: password,
      );

      await storage.write(key: accessTokenKey, value: response.accessToken);
      await storage.write(key: refreshTokenKey, value: response.refreshToken);

      final userResponse = await userMeRepository.getUserInfo();

      state = userResponse; // 유저 정보

      return userResponse;
    } on DioException catch (e) {
      print("AuthNotifier login error");
      state = UserModelError(message: '로그인 실패: $e');
      Future.value(state); // UserModelError

      throw e;
    }
  }

  Future<TokenResponse> token() async {
    return await authRepository.token();
  }

  Future<void> logout() async {
    // 로그아웃 시 User 상태를 null로 초기화
    state = null;

    await authRepository.logout();

    // Secure Storage에서 Access Token과 Refresh Token 삭제
    await Future.wait([
      storage.delete(key: accessTokenKey),
      storage.delete(key: refreshTokenKey),
    ]);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, UserModelBase?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userMeRepository = ref.watch(userMeRepositoryProvider);
  final storage = ref.watch(secureStorageProvider);

  return AuthNotifier(
    authRepository: authRepository,
    userMeRepository: userMeRepository,
    storage: storage,
  );
});
