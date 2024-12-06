import 'dart:convert';

ChatRoomEnterResponseModel chatRoomEnterResponseModelFromJson(String str) => ChatRoomEnterResponseModel.fromJson(json.decode(str));

String chatRoomEnterResponseModelToJson(ChatRoomEnterResponseModel data) => json.encode(data.toJson());

class ChatRoomEnterResponseModel {
  int chatRoomId;
  String newMemberId;
  DateTime createdAt;

  ChatRoomEnterResponseModel({
    required this.chatRoomId,
    required this.newMemberId,
    required this.createdAt,
  });

  ChatRoomEnterResponseModel copyWith({
    int? chatRoomId,
    String? newMemberId,
    DateTime? createdAt,
  }) =>
      ChatRoomEnterResponseModel(
        chatRoomId: chatRoomId ?? this.chatRoomId,
        newMemberId: newMemberId ?? this.newMemberId,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ChatRoomEnterResponseModel.fromJson(Map<String, dynamic> json) => ChatRoomEnterResponseModel(
    chatRoomId: json["chatRoomId"],
    newMemberId: json["newMemberId"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "chatRoomId": chatRoomId,
    "newMemberId": newMemberId,
    "createdAt": createdAt.toIso8601String(),
  };
}
