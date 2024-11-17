import 'dart:convert';

class SignupResponseModel {
  final String message;
  final UserInfo userInfo;

  SignupResponseModel({
    required this.message,
    required this.userInfo,
  });

  SignupResponseModel copyWith({
    String? message,
    UserInfo? userInfo,
  }) =>
      SignupResponseModel(
        message: message ?? this.message,
        userInfo: userInfo ?? this.userInfo,
      );

  factory SignupResponseModel.fromRawJson(String str) => SignupResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) => SignupResponseModel(
    message: json["message"],
    userInfo: UserInfo.fromJson(json["userInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "userInfo": userInfo.toJson(),
  };
}

class UserInfo {
  final int userId;
  final String snsId;
  final String snsType;
  final String nickname;
  final String email;
  final double weight;

  UserInfo({
    required this.userId,
    required this.snsId,
    required this.snsType,
    required this.nickname,
    required this.email,
    required this.weight,
  });

  UserInfo copyWith({
    int? userId,
    String? snsId,
    String? snsType,
    String? nickname,
    String? email,
    double? weight,
  }) =>
      UserInfo(
        userId: userId ?? this.userId,
        snsId: snsId ?? this.snsId,
        snsType: snsType ?? this.snsType,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        weight: weight ?? this.weight,
      );

  factory UserInfo.fromRawJson(String str) => UserInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    userId: json["userId"],
    snsId: json["snsId"],
    snsType: json["snsType"],
    nickname: json["nickname"],
    email: json["email"],
    weight: json["weight"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "snsId": snsId,
    "snsType": snsType,
    "nickname": nickname,
    "email": email,
    "weight": weight,
  };
}
