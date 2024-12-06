import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/model/model/signup/user_id_duplication_check_request_model.dart';
import 'package:together_delivery_app/auth/model/model/signup/user_id_duplication_check_response_model.dart';
import 'package:together_delivery_app/auth/model/model/user_info/user_info_response_model.dart';
import 'package:together_delivery_app/common/service/authentication_network_api_service.dart';

import '../../common/config/api_url.dart';
import '../../common/const/token_type.dart';
import '../../common/const/user_info.dart';
import '../../common/service/api_service.dart';
import '../../common/service/local_service.dart';
import '../../common/service/network_api_service.dart';
import '../../common/service/secure_local_service_impl.dart';
import '../model/model/login/login_request_model.dart';
import '../model/model/login/login_response_model.dart';
import '../model/model/signup/nickname_duplication_check_request_model.dart';
import '../model/model/signup/nickname_duplication_check_response_model.dart';
import '../model/model/signup/signup_request_model.dart';
import '../model/model/signup/signup_response_model.dart';
import 'auth_repository.dart';

final authRepositoryImplProvider = Provider<AuthRepository>(
  (ref) {
    final localService = ref.watch(secureLocalServiceImplProvider);
    final apiService = ref.watch(networkApiServiceProvider);
    final authenticationApiService = ref.watch(authenticationNetworkApiServiceProvider);
    return AuthRepositoryImpl(apiService, localService ,authenticationApiService);
  },
);

class AuthRepositoryImpl extends AuthRepository {
  final ApiService _apiService;
  final LocalService _localService;
  final ApiService _authenticationApiService;

  AuthRepositoryImpl(this._apiService, this._localService, this._authenticationApiService);

  @override
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    Response<dynamic> response = await _apiService.getPostApiResponse(
        ApiUrl.login,
        data: requestModel,
        headers: {'content-Type': 'application/json'});
    return LoginResponseModel.fromJson(response.data);
  }

  @override
  Future<NicknameDuplicationCheckResponseModel> checkNicknameDuplication(nickname) async {
    NicknameDuplicationCheckRequestModel requestModel = NicknameDuplicationCheckRequestModel(nickname: nickname);

    var response = await _apiService.getPostApiResponse(
      ApiUrl.nicknameDuplicationCheck,
      headers: {'content-Type': 'application/json'},
      data: requestModel,
    );

    return NicknameDuplicationCheckResponseModel.fromJson(response.data);
  }

  @override
  Future<UserIdDuplicationCheckResponseModel> checkUserIdDuplication(userId) async {
    UserIdDuplicationCheckRequestModel requestModel = UserIdDuplicationCheckRequestModel(username: userId);

    var response = await _apiService.getPostApiResponse(
      ApiUrl.userIdDuplicationCheck,
      headers: {'content-Type': 'application/json'},
      data: requestModel,
    );

    return UserIdDuplicationCheckResponseModel.fromJson(response.data);
  }

  @override
  Future<SignupResponseModel> signup(SignupRequestModel requestModel) async {
    var response = await _apiService.getPostApiResponse(
      ApiUrl.signup,
      data: requestModel,
      headers: {'content-Type': 'application/json'},
    );

    return SignupResponseModel.fromJson(response.data);
  }

  @override
  Future<void> saveToken(String accessToken, String refreshToken) async {
    await _localService.save(TokenType.accessToken.name, accessToken);
    await _localService.save(TokenType.refreshToken.name, refreshToken);
  }

  @override
  Future<void> saveUsername(String username) async {
    await _localService.save(UserInfo.username.name, username);
  }

  @override
  Future<void> saveNickname(String nickname) async {
    await _localService.save(UserInfo.nickname.name, nickname);
  }

  @override
  Future<UserInfoResponseModel> getUserInfo() async{
    var response = await _authenticationApiService.getGetApiResponse(ApiUrl.userInfoGet);
    return UserInfoResponseModel.fromJson(response.data);
  }
}
