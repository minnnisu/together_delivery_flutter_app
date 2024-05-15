import 'package:flutter/cupertino.dart';

class ChatOpenMessageWidget extends StatelessWidget {
  const ChatOpenMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(color: Color(0xffc2c2c2), child: Text("채팅방이 생성되었습니다."))
      ],
    );
  }
}
