import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

import '../../providers/dioProvider.dart';
import '../model/user/userModel.dart';

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
      if(e.response?.data['errorCode'] == 'UserNotFoundError'){
        ref.read(authProvider.notifier).logout();
      }

      rethrow;
    }
  }
}
