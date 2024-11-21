import 'dart:convert';

SignupResponseModel userIdDuplicationCheckRequestModelFromJson(String str) => SignupResponseModel.fromJson(json.decode(str));

String userIdDuplicationCheckRequestModelToJson(SignupResponseModel data) => json.encode(data.toJson());

class SignupResponseModel {
  String username;

  SignupResponseModel({
    required this.username,
  });

  SignupResponseModel copyWith({
    String? username,
  }) =>
      SignupResponseModel(
        username: username ?? this.username,
      );

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) => SignupResponseModel(
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
  };
}
