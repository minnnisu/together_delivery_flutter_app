import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/providers/dioProvider.dart';

import '../model/signup/nicknameDuplicationCheck.dart';
import '../model/signup/signupRequest.dart';
import '../model/signup/usernameDuplicationCheck.dart';

final signupRepositoryProvider = Provider<SignupRepository>((ref) {
  final Dio dio = ref.read(dioProvider);
  return SignupRepository(dio);
});

class SignupRepository {
  final Dio dio;

  SignupRepository(this.dio);

  Future<void> checkUsernameDuplication(String username) async {
    UsernameDuplicationCheck usernameDuplicationCheck =
        UsernameDuplicationCheck(username: username);

    await dio.post(
      apiUrls.usernameDuplicationCheck,
      data: usernameDuplicationCheck.toJson(),
    );
  }

  Future<void> checkNicknameDuplication(String nickname) async {
    NicknameDuplicationCheck nicknameDuplicationCheck =
        NicknameDuplicationCheck(nickname: nickname);

    await dio.post(apiUrls.nicknameDuplicationCheck,
        data: nicknameDuplicationCheck.toJson());
  }

  Future<void> registerUser(SignupRequest requestBody) async {
    await dio.post(
      apiUrls.userRegister,
      data: requestBody.toJson(),
    );
  }
}
