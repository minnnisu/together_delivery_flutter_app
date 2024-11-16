import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/chat/model/chat_message.dart';

class ChatLeaveMessageWidget extends StatelessWidget {
  final ChatLeaveMessage chatMessage;
  const ChatLeaveMessageWidget({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(color: Color(0xffc2c2c2), child: Text("${chatMessage.sender}님이 채팅방을 떠났습니다."))
      ],
    );
  }
}
