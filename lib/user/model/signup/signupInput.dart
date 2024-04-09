import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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
    required String? usernameErrMsg,
    required String? usernameCheckSuccessMessage,
    required String? nicknameErrMsg,
    required String? nicknameCheckSuccessMessage,
  }) = _SignupInput;
}