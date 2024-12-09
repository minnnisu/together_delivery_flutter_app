import 'dart:convert';

import 'package:together_delivery_app/chat/const/chat_message_type.dart';

ChatMessageListResponseModel chatMessageListResponseModelFromJson(String str) => ChatMessageListResponseModel.fromJson(json.decode(str));

String chatMessageListResponseModelToJson(ChatMessageListResponseModel data) => json.encode(data.toJson());

class ChatMessageListResponseModel {
  List<ChatMessage> chatMessages;

  ChatMessageListResponseModel({
    required this.chatMessages,
  });

  ChatMessageListResponseModel copyWith({
    List<ChatMessage>? chatMessages,
  }) =>
      ChatMessageListResponseModel(
        chatMessages: chatMessages ?? this.chatMessages,
      );

  factory ChatMessageListResponseModel.fromJson(Map<String, dynamic> json) => ChatMessageListResponseModel(
    chatMessages: List<ChatMessage>.from(json["chatMessages"].map((x) => ChatMessage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "chatMessages": List<dynamic>.from(chatMessages.map((x) => x.toJson())),
  };
}

class ChatMessage {
  String type;
  String sender;
  String message;
  DateTime createdAt;
  int messageId;

  ChatMessage({
    required this.type,
    required this.sender,
    required this.message,
    required this.createdAt,
    required this.messageId,
  });

  ChatMessage copyWith({
    String? type,
    String? sender,
    String? message,
    DateTime? createdAt,
    int? messageId,
  }) =>
      ChatMessage(
        type: type ?? this.type,
        sender: sender ?? this.sender,
        message: message ?? this.message,
        createdAt: createdAt ?? this.createdAt,
        messageId: messageId ?? this.messageId,
      );

  factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
    type: json["type"],
    sender: json["sender"],
    message: json["message"],
    createdAt: DateTime.parse(json["createdAt"]),
    messageId: json["messageId"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "sender": sender,
    "message": message,
    "createdAt": createdAt.toIso8601String(),
    "messageId": messageId,
  };
}
