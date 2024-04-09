import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';

part 'signupInput.freezed.dart';

@freezed
class SignupInput with _$SignupInput{
  const factory SignupInput({
    required String username,
    required String password,
    required String passwordCheck,
    required String name,
    required String nickname,
    required String email,
    required String telephone,
    required String college,

    required String? usernameCheckSuccessMessage,
    required String? nicknameCheckSuccessMessage,

    required String? usernameErrMsg,
    required String? passwordErrMsg,
    required String? passwordCheckErrMsg,
    required String? nameErrMsg,
    required String? nicknameErrMsg,
    required String? emailErrMsg,
    required String? telephoneErrMsg,
    required String? collegeErrMsg,

    required SignupFieldType? currentFocusedField,
  }) = _SignupInput;
}