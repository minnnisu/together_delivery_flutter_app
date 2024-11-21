import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/exception/custom_exception.dart';
import '../../common/exception/error_code.dart';
import '../model/model/login/login_request_model.dart';
import '../model/model/login/login_response_model.dart';
import '../model/state/login_input_state/login_input_state.dart';
import '../repository/auth_repository.dart';
import '../repository/auth_repository_impl.dart';
import 'login_result.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, LoginInputState>((ref) {
  final authRepository = ref.watch(authRepositoryImplProvider);
  return LoginViewModel(LoginInputState.init(), authRepository);
});

class LoginViewModel extends StateNotifier<LoginInputState> {
  final AuthRepository authRepository;

  LoginViewModel(super.state, this.authRepository);

  Future<LoginResult> login() async {
    try {
      // 입력 값 검증
      _validateLoginInput();

      var loginRequestModel = LoginRequestModel(
          username: state.username.value, password: state.password.value);

      LoginResponseModel responseModel =
          await authRepository.login(loginRequestModel);

      // 서비스 토큰 저장
      authRepository.saveToken(
          responseModel.accessToken, responseModel.refreshToken);

      return LoginResult.success();
    } on CustomException catch (e) {
      if (e.errorCode == ErrorCode.UserNotFoundError) {
        return LoginResult.failure(e.errorCode, "아이디 혹은 패스워드를 확인해주세요");
      }

      if (e.errorCode == ErrorCode.NotValidInputError) {
        return LoginResult.failure(e.errorCode, "아이디 혹은 패스워드를 확인해주세요");
      }

      return LoginResult.failure(e.errorCode, "알 수 없는 문제가 발생하였습니다.");
    }
  }

  void _validateLoginInput() {
    if (state.username.value == "" ||
        state.password.value == "" ||
        state.username.value.trim() != state.username.value ||
        state.password.value.trim() != state.password.value) {
      throw CustomException(ErrorCode.NotValidInputError);
    }
  }

  void onUsernameChange(String value) {
    state = state.copyWith(
      username: state.username.copyWith(
        value: value,
        isValid: false,
      ),
    );
  }

  void onPasswordChange(String value) {
    state = state.copyWith(
      password: state.password.copyWith(
        value: value,
        isValid: false,
      ),
    );
  }

  void changeErrorMessage(String value) {
    state = state.copyWith(errorMessage: value);
  }
}
