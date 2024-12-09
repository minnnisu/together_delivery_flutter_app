import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:together_delivery_app/auth/const/chat_message_field_type.dart';
import 'package:together_delivery_app/chat/model/chat_message_input_state.dart';
import 'package:together_delivery_app/common/exception/chat_message_input_exception.dart';
import 'package:together_delivery_app/common/service/local_service.dart';

import '../../common/const/user_info.dart';
import '../../common/service/secure_local_service_impl.dart';

final chatRoomInputViewModelProvider =
    StateNotifierProvider<ChatRoomInputViewModel, ChatMessageInputState>((ref) {
  final LocalService localService = ref.watch(secureLocalServiceImplProvider);

  return ChatRoomInputViewModel(ChatMessageInputState.init(), localService);
});

class ChatRoomInputViewModel extends StateNotifier<ChatMessageInputState> {
  final LocalService localService;

  ChatRoomInputViewModel(super.state, this.localService);

  void onChangeChatMessage(String chatMessage) {
    try {
      _validateMessage(chatMessage);
      _changeInput(ChatMessageFieldType.chatMessage, chatMessage, true, "");
    } on ChatMessageInputException catch (e) {
      _changeInput(
          ChatMessageFieldType.chatMessage, chatMessage, false, e.errorMessage);
    }
  }

  void onSubmitChatMessage(StompClient stompClient, chatRoomId) async {
    try {
      _validateMessage(state.chatMessage.value);
      stompClient.send(
        destination: '/app/chat/message', // 전송할 destination
        body: json.encode(
          {
            "type": "TALK",
            "chatRoomId": chatRoomId,
            "username": await localService.getValue(UserInfo.username.name),
            "deleteTargetChatMessageId": null,
            "message": state.chatMessage.value,
          },
        ),
      );
    } on ChatMessageInputException catch (e) {
      _changeInput(ChatMessageFieldType.chatMessage, state.chatMessage.value,
          false, e.errorMessage);
    }
  }

  void _validateMessage(String content) {
    if (content.isEmpty) {
      throw ChatMessageInputException(
          ChatMessageFieldType.chatMessage, '메시지를 입력해주세요.');
    }

    if (content.length < 2 || content.length > 50) {
      throw ChatMessageInputException(
          ChatMessageFieldType.chatMessage, '메시지를 2글자 이상 50글자 이하로 작성해주세요.');
    }
  }

  void _changeInput(ChatMessageFieldType chatMessageFieldType, dynamic value,
      bool isValid, String stateMessage) {
    if (chatMessageFieldType == ChatMessageFieldType.chatMessage) {
      state = state.copyWith(
        chatMessage: state.chatMessage.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }
  }
}
