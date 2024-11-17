import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class LoginResponseModel {
  final String accessToken;
  final String refreshToken;

  LoginResponseModel({
    required this.accessToken,
    required this.refreshToken,
  });

  LoginResponseModel copyWith({
    String? accessToken,
    String? refreshToken,
  }) =>
      LoginResponseModel(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory LoginResponseModel.fromRawJson(String str) => LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "refreshToken": refreshToken,
  };
}
