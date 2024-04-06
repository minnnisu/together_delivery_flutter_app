import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'signupInput.freezed.dart';

@freezed
class SignupInput with _$SignupInput{
  const factory SignupInput({
    required String username,
    required String usernameErrMsg,
    required String password,
    required String passwordErrMsg,
    required String passwordCheck,
    required String passwordCheckErrMsg,
    required String name,
    required String nameErrMsg,
    required String nickname,
    required String nicknameErrMsg,
    required String email,
    required String emailErrMsg,
    required String telephone,
    required String telephoneErrMsg,
    required String college,
    required String collegeErrMsg,
  }) = _SignupInput;
}