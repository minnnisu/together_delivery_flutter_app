import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/repository/signupRepository.dart';
import '../../constant/HttpFailure.dart';
import '../model/signup/signupInput.dart';
import '../model/signup/signupRequest.dart';

typedef HttpResult = ({bool isSuccess, HttpFailure? message});
typedef ValidationResult = ({bool isValid, String? message});

final signupProvider = StateNotifierProvider<SignupNotifier, SignupInput>(
  (ref) {
    final SignupRepository signupRepository =
        ref.watch(signupRepositoryProvider);
    return SignupNotifier(signupRepository);
  },
);

class SignupNotifier extends StateNotifier<SignupInput> {
  final SignupRepository signupRepository;

  SignupNotifier(this.signupRepository)
      : super(SignupInput(
          username: "",
          password: "",
          passwordCheck: "",
          name: "",
          nickname: "",
          email: "",
          telephone: "",
          college: "",
          usernameErrMsg: null,
          passwordErrMsg: null,
          passwordCheckErrMsg: null,
          nameErrMsg: null,
          nicknameErrMsg: null,
          emailErrMsg: null,
          telephoneErrMsg: null,
          collegeErrMsg: null,
          usernameCheckSuccessMessage: null,
          nicknameCheckSuccessMessage: null,
          currentFocusedField: null,
        ));



  String? getFieldValue(SignupFieldType type) {
    if (type == SignupFieldType.username) {
      return state.username;
    }
    if (type == SignupFieldType.password) {
      return state.password;
    }
    if (type == SignupFieldType.passwordCheck) {
      return state.passwordCheck;
    }
    if (type == SignupFieldType.name) {
      return state.name;
    }
    if (type == SignupFieldType.nickname) {
      return state.nickname;
    }
    if (type == SignupFieldType.email) {
      return state.email;
    }
    if (type == SignupFieldType.telephone) {
      return state.telephone;
    }
    if (type == SignupFieldType.college) {
      return state.college;
    }
    return null;
  }

  String? getErrorValue(SignupFieldType type) {
    if (type == SignupFieldType.username) {
      return state.usernameErrMsg;
    }
    if (type == SignupFieldType.password) {
      return state.passwordErrMsg;
    }
    if (type == SignupFieldType.passwordCheck) {
      return state.passwordCheckErrMsg;
    }
    if (type == SignupFieldType.name) {
      return state.nameErrMsg;
    }
    if (type == SignupFieldType.nickname) {
      return state.nicknameErrMsg;
    }
    if (type == SignupFieldType.email) {
      return state.emailErrMsg;
    }
    if (type == SignupFieldType.telephone) {
      return state.telephoneErrMsg;
    }
    if (type == SignupFieldType.college) {
      return state.collegeErrMsg;
    }
    return null;
  }

  String? getSuccessMsg(SignupFieldType type) {
    if (type == SignupFieldType.username) {
      return state.usernameCheckSuccessMessage;
    }

    if (type == SignupFieldType.nickname) {
      return state.nicknameCheckSuccessMessage;
    }

    return null;
  }

  void checkFocusedFieldChange(SignupFieldType type) {
    if(state.currentFocusedField == null) {
      print("null로 실행");
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    String? value = getFieldValue(state.currentFocusedField!);

    if (value == null || value.isEmpty) {
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    if(state.currentFocusedField != type){
      print("changed");

      ValidationResult validationResult = validate(state.currentFocusedField!, value);
      if(!validationResult.isValid) {
        updateErrorField(state.currentFocusedField!, validationResult.message!);
      } else {
        updateErrorField(state.currentFocusedField!, null);
        if(state.currentFocusedField == SignupFieldType.username){
          checkUsernameDuplication();
        }

        if(state.currentFocusedField == SignupFieldType.nickname){
          checkNicknameDuplication();
        }
      }
      print(getErrorValue(state.currentFocusedField!));
    }

    state = state.copyWith(currentFocusedField: type);
  }

  void updateField(SignupFieldType type, String value) {
    if (type == SignupFieldType.username) {
      state = state.copyWith(username: value);
      print("username changed");
    }
    if (type == SignupFieldType.password) {
      state = state.copyWith(password: value);
    }
    if (type == SignupFieldType.passwordCheck) {
      state = state.copyWith(passwordCheck: value);
    }
    if (type == SignupFieldType.name) {
      state = state.copyWith(name: value);
    }
    if (type == SignupFieldType.nickname) {
      state = state.copyWith(nickname: value);
    }
    if (type == SignupFieldType.email) {
      state = state.copyWith(email: value);
    }
    if (type == SignupFieldType.telephone) {
      state = state.copyWith(telephone: value);
    }
    if (type == SignupFieldType.college) {
      state = state.copyWith(college: value);
    }
  }


  void updateErrorField(SignupFieldType type, String? value) {
    if (type == SignupFieldType.username) {
      state = state.copyWith(usernameErrMsg: value);
    }
    if (type == SignupFieldType.password) {
      state = state.copyWith(passwordErrMsg: value);
    }
    if (type == SignupFieldType.passwordCheck) {
      state = state.copyWith(passwordCheckErrMsg: value);
    }
    if (type == SignupFieldType.name) {
      state = state.copyWith(nameErrMsg: value);
    }
    if (type == SignupFieldType.nickname) {
      state = state.copyWith(nicknameErrMsg: value);
    }
    if (type == SignupFieldType.email) {
      state = state.copyWith(emailErrMsg: value);
    }
    if (type == SignupFieldType.telephone) {
      state = state.copyWith(telephoneErrMsg: value);
    }
    if (type == SignupFieldType.college) {
      state = state.copyWith(collegeErrMsg: value);
    }
  }

  ValidationResult validate(SignupFieldType type, String value) {
    if (type == SignupFieldType.username) {
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

    if (type == SignupFieldType.password) {
      final RegExp regex = RegExp(
          r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$');
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

    if(type == SignupFieldType.passwordCheck){
      if (value == null || value.isEmpty) {
        return (isValid: false, message: '비밀번호를 입력하세요.');
      }

      if (value != state.password) {
        return (isValid: false, message: '비밀번호가 일치하지 않습니다.');
      }
      return (isValid: true, message: null);
    }

    if(type == SignupFieldType.name){
      if (value == null || value.isEmpty) {
        return (isValid: false, message: '이름을 입력하세요.');
      }
      if (value.length < 2 || value.length > 20) {
        return (isValid: false, message: '이름은 2글자 이상 20글자 이하여야 합니다.');
      }
      return (isValid: true, message: null);
    }

    if(type == SignupFieldType.nickname){
      if (value == null || value.isEmpty) {
        return (isValid: false, message: '닉네임을 입력하세요.');
      }
      if (value.length < 2 || value.length > 10) {
        return (isValid: false, message: '닉네임은 2글자 이상 10글자 이하여야 합니다.');
      }
      return (isValid: true, message: null);
    }

    if(type == SignupFieldType.email){
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

    if(type == SignupFieldType.telephone) {
      if (value == null || value.isEmpty) {
        return (isValid: false, message: '전화번호를 입력하세요.');
      }
      if (value.length > 20) {
        return (isValid: false, message: '전화번호는 20글자 이하여야 합니다.');
      }
      return (isValid: true, message: null);
    }

    if(type == SignupFieldType.college){
      if (value == null || value.isEmpty) {
        return (isValid: false, message: '대학을 입력하세요.');
      }
      if (value.length > 20) {
        return (isValid: false, message: '대학은 20글자 이하여야 합니다.');
      }
      return (isValid: true, message: null);
    }

    return (isValid: false, message: "존재하지 않은 필드입니다.");
  }

  void _changeErrorMsgAndSuccessMsg(SignupFieldType type, isSuccess, String message){
    if(type == SignupFieldType.username){
      if(isSuccess) {
        state = state.copyWith(usernameErrMsg: null);
        state = state.copyWith(usernameCheckSuccessMessage: message);
      } else {
        state = state.copyWith(usernameErrMsg: message);
        state = state.copyWith(usernameCheckSuccessMessage: null);
      }
    }

    if(type == SignupFieldType.nickname){
      if(isSuccess) {
        state = state.copyWith(nicknameErrMsg: null);
        state = state.copyWith(nicknameCheckSuccessMessage: message);
      } else {
        state = state.copyWith(nicknameErrMsg: message);
        state = state.copyWith(nicknameCheckSuccessMessage: null);
      }
    }
  }

  Future<bool> checkUsernameDuplication() async {
    print("check username");
    try {
      if (!validate(SignupFieldType.username, state.username).isValid) {
        _changeErrorMsgAndSuccessMsg(SignupFieldType.username, false, "유효하지 않은 아이디입니다.");
        return false;
      }

      await signupRepository.checkUsernameDuplication(state.username);
      _changeErrorMsgAndSuccessMsg(SignupFieldType.username, true, "사용가능한 아이디입니다.");
      return true;

    } on DioException catch (e) {
      if (e.response?.data["errorCode"] == "DuplicatedUsernameError") {
        _changeErrorMsgAndSuccessMsg(SignupFieldType.username, false, "중복된 아이디입니다.");
      }
      return false;
    }
  }

  Future<bool> checkNicknameDuplication() async {
    try {
      if (!validate(SignupFieldType.nickname, state.nickname).isValid) {
        _changeErrorMsgAndSuccessMsg(SignupFieldType.nickname, false, "유효하지 않은 닉네임입니다.");
        return false;
      }

      await signupRepository.checkNicknameDuplication(state.nickname);
      _changeErrorMsgAndSuccessMsg(SignupFieldType.nickname, true, "사용가능한 닉네임입니다.");
      return true;
    } on DioException catch (e) {
      if (e.response?.data["errorCode"] == "DuplicatedNicknameError") {
        _changeErrorMsgAndSuccessMsg(SignupFieldType.nickname, false, "중복된 닉네임입니다.");
      }
      return false;
    }
  }

  Future<bool> registerUser() async {
    if(! await checkAllFieldValid()) {
      return false;
    }

    SignupRequest newUser = SignupRequest(
      username: state.username,
      password: state.password,
      passwordCheck: state.passwordCheck,
      nickname: state.nickname,
      name: state.name,
      email: state.email,
      telephone: state.telephone,
      college: state.college,
    );

    try {
      signupRepository.registerUser(newUser);
      return true;
    } on DioException catch (e) {
      if (e.response?.data["errorCode"] == "DuplicatedUsernameError") {
        state = state.copyWith(usernameErrMsg: "중복된 아이디입니다.");
        state = state.copyWith(usernameCheckSuccessMessage: null);
      }

      if (e.response?.data["errorCode"] == "DuplicatedNicknameError") {
        state = state.copyWith(nicknameErrMsg: "중복된 닉네임입니다.");
        state = state.copyWith(nicknameCheckSuccessMessage: null);
      }

      return false;
    }
  }

  Future<bool> checkAllFieldValid() async{
    if(!await checkUsernameDuplication()){
      return false;
    }

    if(!await checkNicknameDuplication()){
      return false;
    }


    for (var fieldType in SignupFieldType.values) {
      ValidationResult validationResult = validate(fieldType, getFieldValue(fieldType)!);
      if(!validationResult.isValid) {
        updateErrorField(fieldType, validationResult.message!);
        return false;
      }
    }

    return true;
  }


  void popSignupScreen(){
    state = SignupInput(
      username: "",
      password: "",
      passwordCheck: "",
      name: "",
      nickname: "",
      email: "",
      telephone: "",
      college: "",
      usernameErrMsg: null,
      passwordErrMsg: null,
      passwordCheckErrMsg: null,
      nameErrMsg: null,
      nicknameErrMsg: null,
      emailErrMsg: null,
      telephoneErrMsg: null,
      collegeErrMsg: null,
      usernameCheckSuccessMessage: null,
      nicknameCheckSuccessMessage: null,
      currentFocusedField: null,
    );
  }
}
