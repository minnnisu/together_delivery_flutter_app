import 'package:together_delivery_app/chat/model/chat_receive_message_model.dart';

class ChatMessageListState {
  List<ChatReceiveMessageModel> chatMessages;
  int? nextCursor;
  bool hasMore;
  bool isLoading;

  ChatMessageListState({
    required this.nextCursor,
    required this.hasMore,
    required this.chatMessages,
    required this.isLoading,
  });

  ChatMessageListState copyWith({
    List<ChatReceiveMessageModel>? chatMessages,
    bool? hasMore,
    bool? isLoading,
    int? nextCursor,
  }) =>
      ChatMessageListState(
        hasMore: hasMore ?? this.hasMore,
        chatMessages: chatMessages ?? this.chatMessages,
        isLoading: isLoading ?? this.isLoading,
        nextCursor: nextCursor ?? this.nextCursor,
      );

  ChatMessageListState.init()
      : chatMessages = [],
        hasMore = true,
        isLoading = false,
        nextCursor = null;
}
