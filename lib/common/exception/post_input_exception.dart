import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/auth/const/post_field_type.dart';
import 'package:together_delivery_app/auth/const/signup_field_type.dart';

import '../config/utils.dart';
import '../routes/routes.dart';
import 'error_code.dart';

class PostInputException implements Exception {
  PostFieldType postFieldType;
  String errorMessage;

  PostInputException(this.postFieldType, this.errorMessage);
}