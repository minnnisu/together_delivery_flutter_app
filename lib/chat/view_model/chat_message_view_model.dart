import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/src/core/paging_controller.dart';
import 'package:together_delivery_app/chat/const/chat_message_sender_type.dart';
import 'package:together_delivery_app/chat/model/chat_message_list_response_model.dart';
import 'package:together_delivery_app/chat/repository/chat_message_repository.dart';
import 'package:together_delivery_app/common/const/user_info.dart';
import 'package:together_delivery_app/common/service/local_service.dart';
import 'package:together_delivery_app/common/service/secure_local_service_impl.dart';

import '../model/chat_message_list_state.dart';
import '../model/chat_receive_message_model.dart';
import '../repository/chat_message_repository_impl.dart';

final chatMessageViewModelProvider =
    StateNotifierProvider<ChatMessageViewModel, ChatMessageListState>((ref) {
  final localService = ref.watch(secureLocalServiceImplProvider);
  final chatMessageRepository = ref.watch(chatMessageRepositoryProvider);
  return ChatMessageViewModel(
      ChatMessageListState.init(), localService, chatMessageRepository);
});

class ChatMessageViewModel extends StateNotifier<ChatMessageListState> {
  final LocalService localService;
  final ChatMessageRepository chatMessageRepository;

  ChatMessageViewModel(
      super.state, this.localService, this.chatMessageRepository);

  Future<void> receiveChatMessage(frame) async {
    Map<String, dynamic> response = json.decode(frame.body!);
    final chatMessage = ChatReceiveMessageModel.fromJson(response);
    String nickname =
    await localService.getValue(UserInfo.nickname.name) as String;

    if (nickname == chatMessage.sender) {
      chatMessage.chatMessageSenderType = ChatMessageSenderType.me;
    } else {
      chatMessage.chatMessageSenderType = ChatMessageSenderType.other;
    }

    state = state.copyWith(chatMessages: [chatMessage, ...state.chatMessages]);
  }

  Future<void> addMessageList(List<ChatReceiveMessageModel> chatReceivedMessageList) async {
    state = state.copyWith(chatMessages: [...state.chatMessages, ...chatReceivedMessageList]);
  }

  Future<List<ChatReceiveMessageModel>> fetchChatMessage(
      int chatRoomId) async {
    var chatMessageListResponseModel =
        await chatMessageRepository.fetchChatMessage(chatRoomId, state.nextCursor);
    String nickname =
        await localService.getValue(UserInfo.nickname.name) as String;

    return chatMessageListResponseModel.chatMessages.map(
      (e) => ChatReceiveMessageModel(
          chatMessageSenderType: e.sender == nickname
              ? ChatMessageSenderType.me
              : ChatMessageSenderType.other,
          type: e.type,
          createdAt: e.createdAt,
          message: e.message,
          messageId: e.messageId,
          sender: e.sender),
    ).toList();
  }

  void onChangeNextCursor(int? nextCursor) {
    state = state.copyWith(nextCursor: nextCursor);
  }

  void onChangeHasMore(bool hasMore) {
    state = state.copyWith(hasMore: hasMore);
  }

  void onChangeIsLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }
}
