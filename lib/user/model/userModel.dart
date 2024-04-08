import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'userModel.freezed.dart';
part 'userModel.g.dart';

abstract class UserModelBase {}

@freezed
class UserModel extends UserModelBase with _$UserModel {
  const factory UserModel({
    required String username,
    required String name,
    required String nickname,
    required String email,
    required String telephone,
    required String college,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

class UserModelError extends UserModelBase {
  final String message;

  UserModelError({
    required this.message,
  });
}

class UserModelLoading extends UserModelBase {}
