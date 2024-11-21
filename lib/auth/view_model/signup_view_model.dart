import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/const/signup_field_type.dart';
import 'package:together_delivery_app/auth/model/model/signup/signup_request_model.dart';
import 'package:together_delivery_app/auth/model/state/signup_input_state.dart';
import 'package:together_delivery_app/auth/repository/auth_repository.dart';
import 'package:together_delivery_app/common/exception/custom_exception.dart';
import 'package:together_delivery_app/common/exception/error_code.dart';
import 'package:together_delivery_app/common/exception/signup_input_exception.dart';

import '../repository/auth_repository_impl.dart';

final signupViewModelProvider =
    StateNotifierProvider<SignupViewModel, SignupInputState>((ref) {
  final authRepository = ref.watch(authRepositoryImplProvider);

  return SignupViewModel(SignupInputState.init(), authRepository);
});

class SignupViewModel extends StateNotifier<SignupInputState> {
  final AuthRepository authRepository;

  SignupViewModel(super.state, this.authRepository);

  void onChangeUserId(String userId) {
    try {
      _validateUserId(userId);
      _changeInput(SignupFieldType.userId, userId, false, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.userId, userId, false, e.errorMessage);
    }
  }

  void onClickUserIdCheckButton() async {
    _validateUserId(state.userId.value);

    try {
      await authRepository.checkUserIdDuplication(state.userId.value);
      _changeInput(SignupFieldType.userId, state.userId.value, true, "사용가능한 아이디입니다.");
    } on SignupInputException catch (e) {
      _changeInput(
          SignupFieldType.userId, state.userId.value, false, e.errorMessage);
    } on CustomException catch (e) {
      _changeInput(
          SignupFieldType.userId, state.userId.value, false, e.errorMessage);
    } catch (_) {
      _changeInput(SignupFieldType.userId, state.userId.value, false,
          ErrorCode.UnknownError.message!);
    }
  }

  void onChangePassword(String password) {
    try {
      _validatePassword(password);
      _changeInput(SignupFieldType.password, password, true, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.password, password, false, e.errorMessage);
    }
  }

  void onChangePasswordCheck(String passwordCheck) {
    try {
      _validatePasswordCheck(passwordCheck);
      _changeInput(SignupFieldType.passwordCheck, passwordCheck, true, "");
    } on SignupInputException catch (e) {
      _changeInput(
          SignupFieldType.passwordCheck, passwordCheck, false, e.errorMessage);
    }
  }

  void onChangeName(String name) {
    try {
      _validateName(name);
      _changeInput(SignupFieldType.name, name, true, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.name, name, false, e.errorMessage);
    }
  }

  void onChangeNickname(String nickname) {
    try {
      _validateNickname(nickname);
      _changeInput(SignupFieldType.nickname, nickname, false, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.nickname, nickname, false, e.errorMessage);
    }
  }

  void onClickNicknameCheckButton() async {
    _validateNickname(state.nickname.value);

    try {
      await authRepository.checkNicknameDuplication(state.nickname.value);
      _changeInput(SignupFieldType.nickname, state.nickname.value, true, "사용가능한 닉네임입니다.");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.nickname, state.nickname.value, false,
          e.errorMessage);
    } on CustomException catch (e) {
      _changeInput(SignupFieldType.nickname, state.nickname.value, false,
          e.errorMessage);
    } catch (_) {
      _changeInput(SignupFieldType.nickname, state.nickname.value, false,
          ErrorCode.UnknownError.message!);
    }
  }

  void onChangeEmail(String email) {
    try {
      _validateEmail(email);
      _changeInput(SignupFieldType.email, email, true, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.email, email, false, e.errorMessage);
    }
  }

  void onChangeCollege(String college) {
    try {
      _validateCollege(college);
      _changeInput(SignupFieldType.college, college, true, "");
    } on SignupInputException catch (e) {
      _changeInput(SignupFieldType.college, college, false, e.errorMessage);
    }
  }

  Future<void> signup() async {
    final fieldMap = {
      SignupFieldType.userId : state.userId.value,
      SignupFieldType.password : state.password.value,
      SignupFieldType.passwordCheck : state.passwordCheck.value,
      SignupFieldType.name : state.name.value,
      SignupFieldType.nickname : state.nickname.value,
      SignupFieldType.email : state.email.value,
      SignupFieldType.college : state.college.value,
    };

    try {
      _validateUserId(state.userId.value);
      if(!state.userId.isValid) {
        throw SignupInputException(SignupFieldType.userId, "중복확인이 필요합니다");
      }
      _validatePassword(state.password.value);
      _validatePasswordCheck(state.passwordCheck.value);
      _validateName(state.name.value);
      _validateNickname(state.nickname.value);
      if(!state.nickname.isValid) {
        throw SignupInputException(SignupFieldType.nickname, "중복확인이 필요합니다");
      }
      _validateEmail(state.email.value);
      _validateCollege(state.college.value);

      var signupRequestModel = SignupRequestModel(
        username: state.userId.value,
        password: state.password.value,
        passwordCheck: state.passwordCheck.value,
        name: state.name.value,
        nickname: state.nickname.value,
        email: state.email.value,
        college: state.college.value,
      );

      await authRepository.signup(signupRequestModel);

    } on SignupInputException catch (e) {
      _changeInput(e.signupFieldType, fieldMap[e.signupFieldType]!, false, e.errorMessage);
      throw CustomException(ErrorCode.NotValidInputError);
    } on CustomException {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  void _validateUserId(userId) {
    RegExp regExp = RegExp(r'^[A-Za-z0-9]+$');

    if (userId == "") {
      throw SignupInputException(SignupFieldType.userId, "아이디를 입력해주세요.");
    }

    if (userId.trim() != userId) {
      throw SignupInputException(SignupFieldType.userId, "공백을 포함할 수 없습니다.");
    }

    if (userId.length < 4 || userId.length > 20) {
      throw SignupInputException(
          SignupFieldType.userId, "아이디는 2글자 이상 20글자 이하 이어야 합니다.");
    }

    if (!regExp.hasMatch(userId)) {
      throw SignupInputException(
          SignupFieldType.userId, "이이디는 영문 대소문자와 숫자만 가능합니다");
    }
  }

  void _validatePassword(value) {
    final RegExp regex =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$');

    if (!regex.hasMatch(value)) {
      throw SignupInputException(SignupFieldType.password,
          "비밀번호는 영문자, 숫자 특수문자(@, \$, !, %, *, #, ?, &)만 가능합니다.");
    }
  }

  void _validatePasswordCheck(String passwordCheck) {
    if (state.password.value != passwordCheck) {
      throw SignupInputException(
          SignupFieldType.passwordCheck, "비밀번호가 일치하지 않습니다.");
    }
  }

  void _validateName(name) {
    if (name == "") {
      throw SignupInputException(SignupFieldType.name, "이름을 입력해주세요.");
    }

    if (name.trim() != name) {
      throw SignupInputException(SignupFieldType.name, "공백을 포함할 수 없습니다.");
    }

    if (name.length < 2 || name.length > 20) {
      throw SignupInputException(
          SignupFieldType.name, "이름은 2글자 이상 20글자 이하 이어야 합니다.");
    }
  }

  void _validateNickname(nickname) {
    if (nickname == "") {
      throw SignupInputException(SignupFieldType.nickname, "닉네임을 입력해주세요.");
    }

    if (nickname.trim() != nickname) {
      throw SignupInputException(SignupFieldType.nickname, "공백을 포함할 수 없습니다.");
    }

    if (nickname.length < 2 || nickname.length > 10) {
      throw SignupInputException(SignupFieldType.nickname, "닉네임은 2글자 이상 10글자 이하 이어야 합니다.");
    }
  }

  void _validateEmail(email) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');

    if (email == "") {
      throw SignupInputException(SignupFieldType.email, "이메일을 입력해주세요.");
    }

    if (email.trim() != email) {
      throw SignupInputException(SignupFieldType.email, "공백을 포함할 수 없습니다.");
    }

    if (!emailRegExp.hasMatch(email)) {
      throw SignupInputException(SignupFieldType.email, "유효하지않은 이메일 형식입니다.");
    }
  }

  void _validateCollege(college) {
    if (college == "") {
      throw SignupInputException(SignupFieldType.email, "이메일을 입력해주세요.");
    }

    if (college.trim() != college) {
      throw SignupInputException(SignupFieldType.email, "공백을 포함할 수 없습니다.");
    }

    if (college.length < 1 || college.length > 20) {
      throw SignupInputException(
          SignupFieldType.email, "닉네임은 2글자 이상 20글자 이하 이어야 합니다.");
    }
  }

  void _changeInput(SignupFieldType signupFieldType, String value, bool isValid, String stateMessage) {
    switch (signupFieldType) {
      case SignupFieldType.userId:
        state = state.copyWith(
          userId: state.userId.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.password:
        state = state.copyWith(
          password: state.password.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.passwordCheck:
        state = state.copyWith(
          passwordCheck: state.passwordCheck.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.name:
        state = state.copyWith(
          name: state.name.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.nickname:
        state = state.copyWith(
          nickname: state.nickname.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.email:
        state = state.copyWith(
          email: state.email.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
      case SignupFieldType.college:
        state = state.copyWith(
          college: state.college.copyWith(
            value: value,
            isValid: isValid,
            stateMessage: stateMessage,
          ),
        );
        break;
    }
  }
}
