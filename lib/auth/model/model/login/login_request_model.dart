import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'dart:convert';

LoginRequestModel loginRequestModelFromJson(String str) => LoginRequestModel.fromJson(json.decode(str));

String loginRequestModelToJson(LoginRequestModel data) => json.encode(data.toJson());

@immutable
class LoginRequestModel {
  final String username;
  final String password;

  const LoginRequestModel({
    required this.username,
    required this.password,
  });

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) => LoginRequestModel(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}
