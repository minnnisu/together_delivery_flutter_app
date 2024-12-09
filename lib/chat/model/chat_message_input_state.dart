class ChatMessageInputState {
  ChatMessage chatMessage;

  ChatMessageInputState({
    required this.chatMessage,
  });

  ChatMessageInputState copyWith({
    ChatMessage? chatMessage,
  }) =>
      ChatMessageInputState(
        chatMessage: chatMessage ?? this.chatMessage,
      );

  ChatMessageInputState.init() : chatMessage = ChatMessage.init();
}

class ChatMessage {
  String value;
  bool isValid;
  String stateMessage;

  ChatMessage({
    required this.value,
    required this.isValid,
    required this.stateMessage,
  });

  ChatMessage copyWith({
    String? value,
    bool? isValid,
    String? stateMessage,
  }) =>
      ChatMessage(
        value: value ?? this.value,
        isValid: isValid ?? this.isValid,
        stateMessage: stateMessage ?? this.stateMessage,
      );

  ChatMessage.init() : value = "", isValid = false, stateMessage = "";
}
