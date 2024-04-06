import 'package:dio/dio.dart';
import 'package:together_delivery_app/exception/customException.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/models/user.dart';

import '../../constant/errorCode.dart';
import '../dio/dioService.dart';

class SignupService {
  // Future<dynamic> registerUser(User user) async {
  //   Dio _dio = DioService().to();
  //
  //   try {
  //     Response response = await _dio.post(
  //       apiUrls.userRegister,
  //       data: user.toJson(),
  //     );
  //
  //     return CustomException(isSuccess: false,  errorCode: ErrorCode.UnknownError);
  //   } on DioException catch (e) {
  //     // The request was made and the server responded with a status code
  //     // that falls out of the range of 2xx and is also not 304.
  //     final response = e.response;
  //     if (response != null) {
  //       if(response.data["errorCode"] == "DuplicatedUserNameError"){
  //         throw CustomException(ErrorCode.DuplicatedUserNameError);
  //       }
  //
  //       if(response.data['errorCode'] == "NotEqualPasswordAndPasswordCheck") {
  //         return CustomException(ErrorCode.NotEqualPasswordAndPasswordCheck);
  //       }
  //     }
  //   }
  // }
}