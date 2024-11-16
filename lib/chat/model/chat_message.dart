import 'package:together_delivery_app/chat/const/chat_message_type.dart';

abstract class ChatMessage {
  final ChatMessageType type;
  final String sender;
  final String message;
  final String createdAt;

  ChatMessage({
    required this.type,
    required this.sender,
    required this.message,
    required this.createdAt,
  });

  static ChatMessage? createChatMessage(Map<String, dynamic> chatMessageObj) {
    final chatMessageType = ChatMessageType.getChatMessageTypeFromString(chatMessageObj['type']);
    switch(chatMessageType) {
      case ChatMessageType.OPEN:
        return ChatOpenMessage.fromJson(chatMessageObj);
      case ChatMessageType.ENTER:
        return ChatEnterMessage.fromJson(chatMessageObj);
      case ChatMessageType.TALK:
        return ChatTalkMessage.fromJson(chatMessageObj);
      case ChatMessageType.DELETE:
        return null;
      case ChatMessageType.LEAVE:
        return ChatLeaveMessage.fromJson(chatMessageObj);
      default:
        return null;
    }
  }

}

class ChatOpenMessage extends ChatMessage {
  ChatOpenMessage({
    required super.sender,
    required super.message,
    required super.createdAt,
  }) : super(
          type: ChatMessageType.OPEN,
        );

  factory ChatOpenMessage.fromJson(Map<String, dynamic> json) {
    return ChatOpenMessage(
      sender: json['sender'],
      message: json['message'],
      createdAt: json['createdAt'],
    );
  }
}

class ChatEnterMessage extends ChatMessage {
  ChatEnterMessage({
    required super.sender,
    required super.message,
    required super.createdAt,
  }) : super(
          type: ChatMessageType.ENTER,
        );

  factory ChatEnterMessage.fromJson(Map<String, dynamic> json) {
    return ChatEnterMessage(
      sender: json['sender'],
      message: json['message'],
      createdAt: json['createdAt'],
    );
  }
}

class ChatLeaveMessage extends ChatMessage {
  ChatLeaveMessage({
    required super.sender,
    required super.message,
    required super.createdAt,
  }) : super(
    type: ChatMessageType.ENTER,
  );

  factory ChatLeaveMessage.fromJson(Map<String, dynamic> json) {
    return ChatLeaveMessage(
      sender: json['sender'],
      message: json['message'],
      createdAt: json['createdAt'],
    );
  }
}

class ChatTalkMessage extends ChatMessage {
  ChatTalkMessage({
    required int chatMessageId,
    required super.sender,
    required super.message,
    required super.createdAt,
  }) : super(
          type: ChatMessageType.ENTER,
        );

  factory ChatTalkMessage.fromJson(Map<String, dynamic> json) {
    return ChatTalkMessage(
      chatMessageId: json['chatMessageId'],
      sender: json['sender'],
      message: json['message'],
      createdAt: json['createdAt'],
    );
  }
}

class ChatDeletedMessage extends ChatMessage {
  ChatDeletedMessage({
    required int deletedChatMessageId,
    required super.sender,
    required super.message,
    required super.createdAt,
  }) : super(
    type: ChatMessageType.ENTER,
  );

  factory ChatDeletedMessage.fromJson(Map<String, dynamic> json) {
    return ChatDeletedMessage(
      deletedChatMessageId: json['deletedChatMessageId'],
      sender: json['sender'],
      message: json['message'],
      createdAt: json['createdAt'],
    );
  }
}
