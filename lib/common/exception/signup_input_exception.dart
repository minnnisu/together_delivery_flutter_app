import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/auth/const/signup_field_type.dart';

import '../config/utils.dart';
import '../routes/routes.dart';
import 'error_code.dart';

class SignupInputException implements Exception {
  SignupFieldType signupFieldType;
  String errorMessage;

  SignupInputException(this.signupFieldType, this.errorMessage);
}