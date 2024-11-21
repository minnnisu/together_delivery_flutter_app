import 'package:together_delivery_app/auth/model/model/signup/user_id_duplication_check_response_model.dart';

import '../model/model/login/login_request_model.dart';
import '../model/model/login/login_response_model.dart';
import '../model/model/signup/nickname_duplication_check_response_model.dart';
import '../model/model/signup/signup_request_model.dart';
import '../model/model/signup/signup_response_model.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(LoginRequestModel requestModel);

  Future<NicknameDuplicationCheckResponseModel> checkNicknameDuplication(nickname);

  Future<UserIdDuplicationCheckResponseModel> checkUserIdDuplication(userId);

  Future<SignupResponseModel> signup(SignupRequestModel requestModel);

  Future<void> saveToken(String accessToken, String refreshToken);
}