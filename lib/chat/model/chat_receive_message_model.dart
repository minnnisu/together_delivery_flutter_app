import 'dart:convert';

import 'package:together_delivery_app/chat/const/chat_message_sender_type.dart';

ChatReceiveMessageModel chatReceiveMessageModelFromJson(String str) => ChatReceiveMessageModel.fromJson(json.decode(str));

String chatReceiveMessageModelToJson(ChatReceiveMessageModel data) => json.encode(data.toJson());

class ChatReceiveMessageModel {
  ChatMessageSenderType? chatMessageSenderType;
  String type;
  String sender;
  DateTime createdAt;
  String message;
  int messageId;

  ChatReceiveMessageModel({
    this.chatMessageSenderType,
    required this.type,
    required this.sender,
    required this.createdAt,
    required this.message,
    required this.messageId,
  });

  ChatReceiveMessageModel copyWith({
    ChatMessageSenderType? chatMessageSenderType,
    String? type,
    String? sender,
    DateTime? createdAt,
    String? message,
    int? messageId,
  }) =>
      ChatReceiveMessageModel(
        chatMessageSenderType: chatMessageSenderType,
        type: type ?? this.type,
        sender: sender ?? this.sender,
        createdAt: createdAt ?? this.createdAt,
        message: message ?? this.message,
        messageId: messageId ?? this.messageId,
      );

  factory ChatReceiveMessageModel.fromJson(Map<String, dynamic> json) => ChatReceiveMessageModel(
    chatMessageSenderType: null,
    type: json["type"],
    sender: json["sender"],
    createdAt: DateTime.parse(json["createdAt"]),
    message: json["message"],
    messageId: json["messageId"],
  );

  Map<String, dynamic> toJson() => {
    "chatMessageSenderType": chatMessageSenderType,
    "type": type,
    "sender": sender,
    "createdAt": createdAt.toIso8601String(),
    "message": message,
    "messageId": messageId,
  };
}
