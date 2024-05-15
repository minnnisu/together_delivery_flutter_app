import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

class ChatRoomInputField extends ConsumerWidget {
  final StompClient? stompClient;

  const ChatRoomInputField({
    required this.stompClient,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inputBackgroundColor = Color(0xfff2f2f2);
    TextEditingController textController = TextEditingController();
    final userModel = ref.watch(authProvider);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: inputBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "메시지 보내기",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
              ),
              iconSize: 20.0,
              onPressed: () {
                if (sendMessage(textController.text, userModel)) {
                  textController.clear();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  bool sendMessage(String message, UserModelBase? userModel) {
    if (message.isEmpty || stompClient == null) {
      return false;
    }

    if (userModel is! UserModel) {
      return false;
    }

    stompClient?.send(
      destination: '/app/chat/message', // 전송할 destination
      body: json.encode({
        "type": "TALK",
        "chatRoomId": 1,
        "username": userModel.username,
        "deleteTargetChatMessageId": null,
        "message": message,
      }),
    );

    return true;
  }
}
