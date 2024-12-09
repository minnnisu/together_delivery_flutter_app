import 'dart:convert';

ChatRoomAccessResponseModel chatRoomAccessResponseModelFromJson(String str) => ChatRoomAccessResponseModel.fromJson(json.decode(str));

String chatRoomAccessResponseModelToJson(ChatRoomAccessResponseModel data) => json.encode(data.toJson());

class ChatRoomAccessResponseModel {
  bool isValid;

  ChatRoomAccessResponseModel({
    required this.isValid,
  });

  ChatRoomAccessResponseModel copyWith({
    bool? isValid,
  }) =>
      ChatRoomAccessResponseModel(
        isValid: isValid ?? this.isValid,
      );

  factory ChatRoomAccessResponseModel.fromJson(Map<String, dynamic> json) => ChatRoomAccessResponseModel(
    isValid: json["isValid"],
  );

  Map<String, dynamic> toJson() => {
    "isValid": isValid,
  };
}
