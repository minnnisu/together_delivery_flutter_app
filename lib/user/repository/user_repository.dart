
import '../model/user_info_response_model.dart';

abstract class UserRepository {
  Future<UserInfoResponseModel> getUserInfo();
}