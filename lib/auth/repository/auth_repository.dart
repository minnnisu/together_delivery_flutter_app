import '../model/model/login/login_request_model.dart';
import '../model/model/login/login_response_model.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(LoginRequestModel requestModel);

  // Future<NicknameDuplicationCheckResponseModel> checkNicknameDuplication(NicknameDuplicationCheckRequestModel requestModel);

  // Future<SignupResponseModel> signup(SignupRequestModel requestModel);

  Future<void> saveToken(String accessToken, String refreshToken);
}