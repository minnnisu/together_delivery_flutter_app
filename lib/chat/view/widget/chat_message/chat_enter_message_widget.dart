import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/chat/model/chat_message.dart';

class ChatEnterMessageWidget extends StatelessWidget {
  final ChatEnterMessage chatMessage;
  const ChatEnterMessageWidget({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(color: Color(0xffc2c2c2), child: Text("${chatMessage.sender}님 초대되었습니다."))
      ],
    );
  }
}
