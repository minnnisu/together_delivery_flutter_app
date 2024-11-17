import 'dart:convert';
import 'dart:ffi';

class SignupRequestModel {
  final String accessToken;
  final String snsType;
  final String nickname;
  final String email;
  final double weight;

  SignupRequestModel({
    required this.accessToken,
    required this.snsType,
    required this.nickname,
    required this.email,
    required this.weight,
  });

  SignupRequestModel copyWith({
    String? accessToken,
    String? snsType,
    String? nickname,
    String? email,
    double? weight,
  }) =>
      SignupRequestModel(
        accessToken: accessToken ?? this.accessToken,
        snsType: snsType ?? this.snsType,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        weight: weight ?? this.weight,
      );

  factory SignupRequestModel.fromRawJson(String str) => SignupRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignupRequestModel.fromJson(Map<String, dynamic> json) => SignupRequestModel(
    accessToken: json["accessToken"],
    snsType: json["snsType"],
    nickname: json["nickname"],
    email: json["email"],
    weight: json["weight"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "snsType": snsType,
    "nickname": nickname,
    "email": email,
    "weight": weight,
  };
}
