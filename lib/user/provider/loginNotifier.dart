import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/model/login/loginForm.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

typedef ValidationResult = ({bool isValid, String? message});

class LoginNotifier extends StateNotifier<LoginForm> {
  final Ref ref;

  LoginNotifier(this.ref)
      : super(LoginForm(username: "", password: "", errorMsg: ""));

  String get username => state.username;

  String get password => state.password;

  String get errorMsg => state.errorMsg;

  void updateField(String type, String value) {
    print("validateUsername 실행");
    print("value: " + value);
    if (type == "username") {
      state = state.copyWith(username: value);
    }
    if (type == "password") {
      state = state.copyWith(password: value);
    }
    if (type == "errorMsg") {
      state = state.copyWith(errorMsg: value);
    }
  }

  ValidationResult validateUsername(value) {
    final RegExp regex = RegExp(r'^[A-Za-z0-9]+$');
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '아이디를 입력해주세요.');
    }
    if (!regex.hasMatch(value) || value.length < 4 || value.length > 20) {
      return (isValid: false, message: '올바른 비밀번호를 입력하였는지 확인해주세요');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validatePassword(value) {
    final RegExp regex =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$');

    if (value == null || value.isEmpty) {
      return (isValid: false, message: '비밀번호를 입력해주세요.');
    }
    if (!regex.hasMatch(value) || value.length < 8 || value.length > 20) {
      return (isValid: false, message: '올바른 비밀번호를 입력하였는지 확인해 주세요');
    }

    return (isValid: true, message: null);
  }

  Future<bool> login() async {
    try {
      await ref.read(authProvider.notifier).login(
            username: state.username,
            password: state.password,
          );
      return true;
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        updateField("errorMsg", "아이디 혹은 비밀번호를 확인해주세요");
      } else {
        updateField("errorMsg", "오류로 인해 로그인에 실패하였습니다.");
      }
    }
    return false;
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, LoginForm>(
    (ref) => LoginNotifier(ref));
