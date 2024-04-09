import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'loginForm.freezed.dart';
part 'loginForm.g.dart';

@freezed
class LoginForm with _$LoginForm {
  const factory LoginForm({
    required String username,
    required String password,
    required String errorMsg,
  }) = _LoginForm;

  factory LoginForm.fromJson(Map<String, dynamic> json) =>
      _$LoginFormFromJson(json);
}