import 'package:flutter/cupertino.dart';

import '../config/utils.dart';
import '../routes/routes.dart';
import 'error_code.dart';

class CustomException implements Exception {
  ErrorCode errorCode;
  String errorMessage;

  CustomException(this.errorCode) : errorMessage = errorCode.message != null
      ? errorCode.message!
      : "요청 과정에서 문제가 발생하였습니다.";

  CustomException.message(this.errorCode, this.errorMessage);

  void display(BuildContext context) {
    Utils.toastMessage(errorMessage);

    if (errorCode == ErrorCode.TokenReissueError) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.login,
            (route) => false,
      );
    }

    if (errorCode == ErrorCode.NoTokenError) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.login,
            (route) => false,
      );
    }
  }
}