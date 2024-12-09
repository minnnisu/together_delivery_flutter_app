import 'dart:convert';

UserIdDuplicationCheckRequestModel userIdDuplicationCheckRequestModelFromJson(String str) => UserIdDuplicationCheckRequestModel.fromJson(json.decode(str));

String userIdDuplicationCheckRequestModelToJson(UserIdDuplicationCheckRequestModel data) => json.encode(data.toJson());

class UserIdDuplicationCheckRequestModel {
  String username;

  UserIdDuplicationCheckRequestModel({
    required this.username,
  });

  UserIdDuplicationCheckRequestModel copyWith({
    String? username,
  }) =>
      UserIdDuplicationCheckRequestModel(
        username: username ?? this.username,
      );

  factory UserIdDuplicationCheckRequestModel.fromJson(Map<String, dynamic> json) => UserIdDuplicationCheckRequestModel(
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
  };
}
