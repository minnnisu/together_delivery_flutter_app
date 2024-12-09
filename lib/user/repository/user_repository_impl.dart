import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/token_type.dart';
import 'package:together_delivery_app/common/service/local_service.dart';
import 'package:together_delivery_app/common/service/secure_local_service_impl.dart';

import '../../common/config/api_url.dart';
import '../../common/service/api_service.dart';
import '../../common/service/authentication_network_api_service.dart';
import '../model/user_info_response_model.dart';
import 'user_repository.dart';

final userRepositoryImplProvider = Provider<UserRepository>(
      (ref) {
    final apiService = ref.watch(authenticationNetworkApiServiceProvider);
    final localService = ref.watch(secureLocalServiceImplProvider);
    return UserRepositoryImpl(apiService, localService);
  },
);

class UserRepositoryImpl extends UserRepository {
  final ApiService _apiService;
  final LocalService _localService;

  UserRepositoryImpl(this._apiService, this._localService);

  @override
  Future<UserInfoResponseModel> getUserInfo() async {
    var response = await _apiService.getGetApiResponse(ApiUrl.userInfoGet);
    return UserInfoResponseModel.fromJson(response.data);
  }

  Future<void> deleteUserToken() async {
    await _localService.delete(TokenType.accessToken.name);
    await _localService.delete(TokenType.refreshToken.name);
  }
}