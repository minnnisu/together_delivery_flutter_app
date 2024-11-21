import 'dart:convert';

SignupRequestModel userIdDuplicationCheckRequestModelFromJson(String str) => SignupRequestModel.fromJson(json.decode(str));

String userIdDuplicationCheckRequestModelToJson(SignupRequestModel data) => json.encode(data.toJson());

class SignupRequestModel {
  String username;
  String password;
  String passwordCheck;
  String name;
  String nickname;
  String email;
  String college;

  SignupRequestModel({
    required this.username,
    required this.password,
    required this.passwordCheck,
    required this.name,
    required this.nickname,
    required this.email,
    required this.college,
  });

  SignupRequestModel copyWith({
    String? username,
    String? password,
    String? passwordCheck,
    String? name,
    String? nickname,
    String? email,
    String? telephone,
    String? college,
  }) =>
      SignupRequestModel(
        username: username ?? this.username,
        password: password ?? this.password,
        passwordCheck: passwordCheck ?? this.passwordCheck,
        name: name ?? this.name,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        college: college ?? this.college,
      );

  factory SignupRequestModel.fromJson(Map<String, dynamic> json) => SignupRequestModel(
    username: json["username"],
    password: json["password"],
    passwordCheck: json["passwordCheck"],
    name: json["name"],
    nickname: json["nickname"],
    email: json["email"],
    college: json["college"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "passwordCheck": passwordCheck,
    "name": name,
    "nickname": nickname,
    "email": email,
    "college": college,
  };
}
