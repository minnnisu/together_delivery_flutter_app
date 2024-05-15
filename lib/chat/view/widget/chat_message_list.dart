import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/model/chat_message.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message/chat_enter_message_widget.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message/chat_leave_message_widget.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message/chat_open_message_widget.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message/chat_talk_message_widget.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';

import '../../../user/provider/authNotifier.dart';

class ChatMessageList extends ConsumerWidget {
  final List<ChatMessage> chatMessageList;

  const ChatMessageList({required this.chatMessageList, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(authProvider) as UserModel;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: chatMessageList.length,
          itemBuilder: (context, index) {
            final chatMessage = chatMessageList[index];

            if(chatMessage is ChatOpenMessage){
              return ChatOpenMessageWidget();
            }

            if(chatMessage is ChatEnterMessage){
              return ChatEnterMessageWidget(chatMessage: chatMessage);
            }

            if(chatMessage is ChatLeaveMessage){
              return ChatLeaveMessageWidget(chatMessage: chatMessage);
            }

            if(chatMessage is ChatTalkMessage){
              if(chatMessage.sender == userModel.nickname) {
                return ChatTalkMessageWidget(chatMessage: chatMessage, isMine: true,);
              }

              return ChatTalkMessageWidget(chatMessage: chatMessage,isMine: false,);
            }
            return null;
          },
        ),
      ),
    );
  }
}
