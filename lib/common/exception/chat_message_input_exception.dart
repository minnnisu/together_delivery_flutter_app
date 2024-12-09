import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/auth/const/chat_message_field_type.dart';
import 'package:together_delivery_app/auth/const/post_field_type.dart';
import 'package:together_delivery_app/auth/const/signup_field_type.dart';

import '../config/utils.dart';
import '../routes/routes.dart';
import 'error_code.dart';

class ChatMessageInputException implements Exception {
  ChatMessageFieldType chatMessageFieldType;
  String errorMessage;

  ChatMessageInputException(this.chatMessageFieldType, this.errorMessage);
}