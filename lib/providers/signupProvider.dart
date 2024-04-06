import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import '../constant/HttpFailure.dart';
import '../helper/dio/dioService.dart';
import '../models/signupInput.dart';
import '../models/user.dart';

typedef SignupResult = ({bool isSuccess, HttpFailure? message});
typedef ValidationResult = ({bool isValid, String? message});

@Injectable()
class SignupNotifier extends StateNotifier<SignupInput> {
  SignupNotifier()
      : super(SignupInput(
          username: "",
          usernameErrMsg: "",
          password: "",
          passwordErrMsg: "",
          passwordCheck: "",
          passwordCheckErrMsg: "",
          name: "",
          nameErrMsg: "",
          nickname: "",
          nicknameErrMsg: "",
          email: "",
          emailErrMsg: "",
          telephone: "",
          telephoneErrMsg: "",
          college: "",
          collegeErrMsg: "",
        ));

  String get username => state.username;

  String get usernameErrMsg => state.usernameErrMsg;

  String get password => state.password;

  String get passwordErrMsg => state.passwordErrMsg;

  String get passwordCheck => state.passwordCheck;

  String get passwordCheckErrMsg => state.passwordCheckErrMsg;

  String get name => state.name;

  String get nameErrMsg => state.nameErrMsg;

  String get nickname => state.nickname;

  String get nicknameErrMsg => state.nicknameErrMsg;

  String get email => state.email;

  String get emailErrMsg => state.emailErrMsg;

  String get telephone => state.telephone;

  String get telephoneErrMsg => state.telephoneErrMsg;

  String get college => state.college;

  String get collegeErrMsg => state.collegeErrMsg;

  void updateField(String type, String value) {
    if (type == "username") {
      state = state.copyWith(username: value);
    }
    if (type == "password") {
      state = state.copyWith(password: value);
    }
    if (type == "passwordCheck") {
      state = state.copyWith(passwordCheck: value);
    }
    if (type == "name") {
      state = state.copyWith(name: value);
    }
    if (type == "nickname") {
      state = state.copyWith(nickname: value);
    }
    if (type == "email") {
      state = state.copyWith(email: value);
    }
    if (type == "telephone") {
      state = state.copyWith(telephone: value);
    }
    if (type == "college") {
      state = state.copyWith(college: value);
    }
  }

  ValidationResult validateUsername(value) {
    final RegExp regex = RegExp(r'^[A-Za-z0-9]+$');
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '아이디를 입력하세요.');
    }
    if (!regex.hasMatch(value)) {
      return (isValid: false, message: '아이디는 영문 대소문자와 숫자만 가능합니다.');
    }
    if (value.length < 4 || value.length > 20) {
      return (isValid: false, message: '아이디는 4자 이상 20자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validatePassword(value) {
    final RegExp regex =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$');
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '비밀번호를 입력하세요.');
    }
    if (!regex.hasMatch(value)) {
      return (
        isValid: false,
        message: '비밀번호는 영문자, 숫자, 특수문자(@, \$, !, %, *, #, ?, &)를 포함해야 합니다.'
      );
    }
    if (value.length < 8 || value.length > 20) {
      return (isValid: false, message: '비밀번호는 8자 이상 20자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validatePasswordCheck(value) {
    print("value: ${value} state.password: ${state.password}");
    if (value != state.password) {
      return (isValid: false, message: '비밀번호가 일치하지 않습니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateName(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '이름을 입력하세요.');
    }
    if (value.length < 2 || value.length > 20) {
      return (isValid: false, message: '이름은 2자 이상 20자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateNickname(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '닉네임을 입력하세요.');
    }
    if (value.length < 2 || value.length > 10) {
      return (isValid: false, message: '닉네임은 2자 이상 10자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateEmail(value) {
    final RegExp regex = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '이메일을 입력하세요.');
    }
    if (!regex.hasMatch(value)) {
      return (isValid: false, message: '유효한 이메일 주소를 입력하세요.');
    }
    if (value.length > 30) {
      return (isValid: false, message: '이메일은 30자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateTelephone(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '전화번호를 입력하세요.');
    }
    if (value.length > 20) {
      return (isValid: false, message: '전화번호는 20자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateCollege(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '대학을 입력하세요.');
    }
    if (value.length > 20) {
      return (isValid: false, message: '대학은 20자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  Future<SignupResult> registerUser() async {
    Dio dio = DioService().to();

    User user = User(
      username: username,
      password: password,
      passwordCheck: passwordCheck,
      nickname: nickname,
      name: name,
      email: email,
      telephone: telephone,
      college: college,
    );

    try {
      Response response = await dio.post(
        apiUrls.userRegister,
        data: user.toJson(),
      );

      return (isSuccess: true, message: null);
    } on DioException catch (e) {
      final response = e.response;
      if (response != null) {
        if (response.data["errorCode"] == "DuplicatedUserNameError") {
          state = state.copyWith(usernameErrMsg: "중복된 아이디입니다.");
          return (
            isSuccess: false,
            message: HttpFailure.DuplicatedUserNameError
          );
        }
      }

      return (isSuccess: false, message: null);
    }
  }
}
