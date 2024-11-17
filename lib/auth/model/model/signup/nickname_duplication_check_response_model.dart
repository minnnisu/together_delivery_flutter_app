import 'dart:convert';

class NicknameDuplicationCheckResponseModel {
  final String message;

  NicknameDuplicationCheckResponseModel({
    required this.message,
  });

  NicknameDuplicationCheckResponseModel copyWith({
    String? message,
  }) =>
      NicknameDuplicationCheckResponseModel(
        message: message ?? this.message,
      );

  factory NicknameDuplicationCheckResponseModel.fromRawJson(String str) => NicknameDuplicationCheckResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NicknameDuplicationCheckResponseModel.fromJson(Map<String, dynamic> json) => NicknameDuplicationCheckResponseModel(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
