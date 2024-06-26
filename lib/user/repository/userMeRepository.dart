import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

final userMeRepositoryProvider = Provider<UserMeRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return UserMeRepository(dio: dio, ref:ref);
});

class UserMeRepository {
  final Dio dio;
  final Ref ref;

  UserMeRepository({required this.dio, required this.ref});

  Future<UserModel> getUserInfo() async{
    try{
      Response response = await dio.get(apiUrls.userInfoGet,
          options: Options(headers: {'accessToken': 'true'}));

      return UserModel.fromJson(response.data);
    } on DioException catch(e){
      if(e.response?.data['errorCode'] == 'NotValidAccessTokenError'){
        throw new CustomException(errorCode: ErrorCode.NotValidAccessTokenError);
      }

      if(e.response?.data['errorCode'] == 'ExpiredAccessTokenError'){
        throw new CustomException(errorCode: ErrorCode.ExpiredAccessTokenError);
      }

      if(e.response?.data['errorCode'] == 'UserNotFoundError'){
        ref.read(authProvider.notifier).logout();
        throw new CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      throw new CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }
}
