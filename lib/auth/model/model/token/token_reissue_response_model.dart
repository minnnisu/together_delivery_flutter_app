import 'dart:convert';

class TokenReissueResponseModel {
  final String message;
  final String accessToken;

  TokenReissueResponseModel({
    required this.message,
    required this.accessToken,
  });

  TokenReissueResponseModel copyWith({
    String? message,
    String? accessToken,
  }) =>
      TokenReissueResponseModel(
        message: message ?? this.message,
        accessToken: accessToken ?? this.accessToken,
      );

  factory TokenReissueResponseModel.fromRawJson(String str) => TokenReissueResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TokenReissueResponseModel.fromJson(Map<String, dynamic> json) => TokenReissueResponseModel(
    message: json["message"],
    accessToken: json["accessToken"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "accessToken": accessToken,
  };
}
