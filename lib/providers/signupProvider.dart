import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/models/usernameDuplicationCheck.dart';
import '../constant/HttpFailure.dart';
import '../helper/dio/dioService.dart';
import '../models/nicknameDuplicationCheck.dart';
import '../models/signupInput.dart';
import '../models/signupRequest.dart';

typedef HttpResult = ({bool isSuccess, HttpFailure? message});
typedef ValidationResult = ({bool isValid, String? message});

@Injectable()
class SignupNotifier extends StateNotifier<SignupInput> {
  String get username => state.username;

  SignupNotifier()
      : super(SignupInput(
          username: "",
          password: "",
          passwordCheck: "",
          name: "",
          nickname: "",
          email: "",
          telephone: "",
          college: "",
          usernameErrMsg: "",
          nicknameErrMsg: "",
          usernameCheckSuccessMessage: "",
          nicknameCheckSuccessMessage: "",
        ));

  String get password => state.password;

  String get passwordCheck => state.passwordCheck;

  String get name => state.name;

  String get nickname => state.nickname;

  String get email => state.email;

  String get telephone => state.telephone;

  String get college => state.college;

  String get usernameErrMsg => state.usernameErrMsg;

  String get usernameCheckSuccessMessage => state.usernameCheckSuccessMessage;

  String get nicknameErrMsg => state.nicknameErrMsg;

  String get nicknameCheckSuccessMessage => state.nicknameCheckSuccessMessage;

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
      return (isValid: false, message: '아이디는 4글자 이상 20글자 이하여야 합니다.');
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
      return (isValid: false, message: '비밀번호는 8글자 이상 20글자 이하여야 합니다.');
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
      return (isValid: false, message: '이름은 2글자 이상 20글자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateNickname(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '닉네임을 입력하세요.');
    }
    if (value.length < 2 || value.length > 10) {
      return (isValid: false, message: '닉네임은 2글자 이상 10글자 이하여야 합니다.');
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
      return (isValid: false, message: '이메일은 30글자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateTelephone(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '전화번호를 입력하세요.');
    }
    if (value.length > 20) {
      return (isValid: false, message: '전화번호는 20글자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  ValidationResult validateCollege(value) {
    if (value == null || value.isEmpty) {
      return (isValid: false, message: '대학을 입력하세요.');
    }
    if (value.length > 20) {
      return (isValid: false, message: '대학은 20글자 이하여야 합니다.');
    }
    return (isValid: true, message: null);
  }

  Future<void> checkUsernameDuplication() async {
    Dio dio = DioService().to();
    UsernameDuplicationCheck usernameDuplicationCheck =
        UsernameDuplicationCheck(username: state.username);

    try {
      Response response = await dio.post(
        apiUrls.usernameDuplicationCheck,
        data: usernameDuplicationCheck.toJson(),
      );

      state = state.copyWith(usernameErrMsg: "");
      state = state.copyWith(usernameCheckSuccessMessage: "사용가능한 아이디입니다.");
    } on DioException catch (e) {
      final response = e.response;
      if (response != null) {
        if (response.data["errorCode"] == "DuplicatedUsernameError") {
          state = state.copyWith(usernameErrMsg: "중복된 아이디입니다.");
          state = state.copyWith(usernameCheckSuccessMessage: "");
        }
      }
    }
  }

  Future<void> checkNicknameDuplication() async {
    Dio dio = DioService().to();
    NicknameDuplicationCheck nicknameDuplicationCheck =
    NicknameDuplicationCheck(nickname: state.nickname);

    try {
      Response response = await dio.post(
        apiUrls.nicknameDuplicationCheck,
        data: nicknameDuplicationCheck.toJson(),
      );

      state = state.copyWith(nicknameErrMsg: "");
      state = state.copyWith(nicknameCheckSuccessMessage: "사용가능한 닉네임입니다.");
    } on DioException catch (e) {
      final response = e.response;
      if (response != null) {
        if (response.data["errorCode"] == "DuplicatedNicknameError") {
          state = state.copyWith(nicknameErrMsg: "중복된 닉네임입니다.");
          state = state.copyWith(nicknameCheckSuccessMessage: "");
        }
      }
    }
  }

  Future<bool> registerUser() async {
    Dio dio = DioService().to();

    SignupRequest user = SignupRequest(
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

      return true;
    } on DioException catch (e) {
      final response = e.response;
      if (response != null) {
        if (response.data["errorCode"] == "DuplicatedUsernameError") {
          state = state.copyWith(usernameErrMsg: "중복된 아이디입니다.");
          state = state.copyWith(usernameCheckSuccessMessage: "");
        }

        if (response.data["errorCode"] == "DuplicatedNicknameError") {
          state = state.copyWith(nicknameErrMsg: "중복된 닉네임입니다.");
          state = state.copyWith(nicknameCheckSuccessMessage: "");
        }
      }

      return false;
    }
  }
}
