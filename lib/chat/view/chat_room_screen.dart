import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:together_delivery_app/chat/model/chat_message.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message_list.dart';
import 'package:together_delivery_app/chat/view/widget/chat_room_input_field.dart';
import 'package:together_delivery_app/common/const/const.dart';
import 'package:together_delivery_app/common/secureStore/secureStore.dart';

import '../../user/model/user/userModel.dart';
import '../../user/provider/authNotifier.dart';

// 채팅 목록을 저장할 리스트
List<ChatMessage> chatMessageList = [];

class ChatRoomScreen extends ConsumerStatefulWidget {
  final int chatRoomId;

  const ChatRoomScreen(this.chatRoomId, {super.key});

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {
  StompClient? stompClient;
  ScrollController scrollController = ScrollController();

  void onConnect(StompClient stompClient, StompFrame frame) {
    stompClient.subscribe(
      destination: '/topic/chat/room/${widget.chatRoomId}',
      callback: (frame) {
        Map<String, dynamic> response = json.decode(frame.body!);
        final chatMessage = ChatMessage.createChatMessage(response);
        if (chatMessage != null) {
          setState(() {
            chatMessageList.add(chatMessage);
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    connectStomp().then((_) {
      // stompClient 초기화가 완료되면 setState를 호출하여 위젯을 다시 빌드합니다.
      setState(() {});
    });
  }

  Future<void> connectStomp() async {
    final storage = ref.read(secureStorageProvider);
    final accessToken = await storage.read(key: accessTokenKey);

    stompClient = StompClient(
      config: StompConfig(
        url: 'ws://192.168.0.2:8080/ws/chat',
        onConnect: (frame) => onConnect(stompClient!, frame),
        onWebSocketError: (dynamic error) => print(error.toString()),
        stompConnectHeaders: {'Authorization': 'Bearer $accessToken'},
      ),
    );

    print("stompClient 연결 완료");

    stompClient!.activate();
  }

  @override
  void dispose() {
    super.dispose();
    stompClient?.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    if (stompClient == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("채팅방"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ChatMessageList(chatMessageList: chatMessageList),
          ChatRoomInputField(
              stompClient: stompClient, chatRoomId: widget.chatRoomId),
        ],
      ),
    );
  }
}
