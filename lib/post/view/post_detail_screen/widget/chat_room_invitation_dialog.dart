import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatRoomInvitationDialog {
  void showChatRoomInvitationDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Color(0xffffffff),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text("채팅방 초대"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                InvitationMemberCheckBox(text: '코린이',),
                InvitationMemberCheckBox(text: '아코',),
                InvitationMemberCheckBox(text: '동국이',),
                InvitationMemberCheckBox(text: '드리미',),
              ],
            ),
          ),
          backgroundColor: Color(0xffffffff),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("닫기"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("확인"),
            ),
          ],
        );
      },
    );
  }
}

class InvitationMemberCheckBox extends StatelessWidget {
  final String text;
  const InvitationMemberCheckBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(value: true, onChanged: (bool? value) {  },),
        Text(text),
      ],
    );
  }
}

