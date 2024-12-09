import 'dart:convert';

UserIdDuplicationCheckResponseModel userIdDuplicationCheckResponseModelFromJson(String str) => UserIdDuplicationCheckResponseModel.fromJson(json.decode(str));

String userIdDuplicationCheckResponseModelToJson(UserIdDuplicationCheckResponseModel data) => json.encode(data.toJson());

class UserIdDuplicationCheckResponseModel {
  String message;

  UserIdDuplicationCheckResponseModel({
    required this.message,
  });

  UserIdDuplicationCheckResponseModel copyWith({
    String? message,
  }) =>
      UserIdDuplicationCheckResponseModel(
        message: message ?? this.message,
      );

  factory UserIdDuplicationCheckResponseModel.fromJson(Map<String, dynamic> json) => UserIdDuplicationCheckResponseModel(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
