import 'dart:convert';

UserInfoResponseModel userInfoResponseModelFromJson(String str) => UserInfoResponseModel.fromJson(json.decode(str));

String userInfoResponseModelToJson(UserInfoResponseModel data) => json.encode(data.toJson());

class UserInfoResponseModel {
  String username;
  String name;
  String nickname;
  String email;
  String college;

  UserInfoResponseModel({
    required this.username,
    required this.name,
    required this.nickname,
    required this.email,
    required this.college,
  });

  UserInfoResponseModel copyWith({
    String? username,
    String? name,
    String? nickname,
    String? email,
    String? telephone,
    String? college,
  }) =>
      UserInfoResponseModel(
        username: username ?? this.username,
        name: name ?? this.name,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        college: college ?? this.college,
      );

  factory UserInfoResponseModel.fromJson(Map<String, dynamic> json) => UserInfoResponseModel(
    username: json["username"],
    name: json["name"],
    nickname: json["nickname"],
    email: json["email"],
    college: json["college"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "name": name,
    "nickname": nickname,
    "email": email,
    "college": college,
  };
}
