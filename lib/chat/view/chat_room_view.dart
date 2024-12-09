import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:together_delivery_app/chat/view/widget/chat_input/chat_input_field.dart';
import 'package:together_delivery_app/chat/view/widget/chat_message_list.dart';
import 'package:together_delivery_app/chat/view_model/chat_room_input_view_model.dart';
import 'package:together_delivery_app/common/service/local_service.dart';

import '../../common/const/token_type.dart';
import '../../common/service/secure_local_service_impl.dart';
import '../model/chat_message_input_state.dart';
import '../model/chat_receive_message_model.dart';
import '../view_model/chat_message_view_model.dart';

class ChatRoomView extends ConsumerStatefulWidget {
  final int chatRoomId;

  const ChatRoomView(this.chatRoomId, {super.key});

  @override
  ConsumerState<ChatRoomView> createState() => _ChatRoomViewState();
}

class _ChatRoomViewState extends ConsumerState<ChatRoomView> {
  late ChatMessageInputState chatMessageInputState;
  late LocalService localService;
  late StompClient? stompClient;

  void onConnect(StompClient stompClient, StompFrame frame) {
    stompClient.subscribe(
      destination: '/topic/chat/room/${widget.chatRoomId}',
      callback: (frame) => ref.read(chatMessageViewModelProvider.notifier).receiveChatMessage(frame),
    );
  }

  Future<void> connectStomp() async {
    final accessToken = await localService.getValue(TokenType.accessToken.name);

    stompClient = StompClient(
      config: StompConfig(
        url: 'ws://10.0.2.2:8080/ws/chat',
        onConnect: (frame) => onConnect(stompClient!, frame),
        onWebSocketError: (dynamic error) => print(error.toString()),
        stompConnectHeaders: {'Authorization': 'Bearer $accessToken'},
      ),
    );

    print("stompClient 연결 완료");

    stompClient!.activate();
  }

  @override
  void initState() {
    super.initState();
    localService = ref.read(secureLocalServiceImplProvider);
    chatMessageInputState = ref.read(chatRoomInputViewModelProvider);

    connectStomp().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (stompClient == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ChatMessageList(chatRoomId: widget.chatRoomId,),
          ChatInputField(
            onButtonTap: () => ref
                .read(chatRoomInputViewModelProvider.notifier)
                .onSubmitChatMessage(stompClient!, widget.chatRoomId),
            onTextChanged: (value) => ref
                .read(chatRoomInputViewModelProvider.notifier)
                .onChangeChatMessage(value),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    stompClient?.deactivate();
  }
}

// import 'package:flutter/material.dart';
//
// class ChatRoomView extends StatefulWidget {
//   final int chatRoomId;
//
//   const ChatRoomView(this.chatRoomId, {super.key});
//
//   @override
//   _ChatRoomViewState createState() => _ChatRoomViewState();
// }
//
// class _ChatRoomViewState extends State<ChatRoomView> {
//   ScrollController _scrollController = ScrollController();
//   List<String> _messages = [];
//   TextEditingController _messageController = TextEditingController();
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadMessages(); // 처음 메시지 로드
//     _scrollController.addListener(_scrollListener); // 스크롤 리스너
//   }
//
//   // 스크롤 리스너: 아래로 스크롤하면 이전 메시지를 불러옴
//   void _scrollListener() {
//     if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !_isLoading) {
//       _loadMoreMessages(); // 서버에서 이전 메시지 로드
//     }
//   }
//
//   // 서버에서 첫 번째 메시지를 불러오는 함수
//   Future<void> _loadMessages() async {
//     // 예시: 첫 번째 메시지들 로드
//     setState(() {
//       _messages = List.generate(20, (index) => 'Message ${index + 1}');
//     });
//   }
//
//   // 서버에서 더 많은 메시지를 로드하는 함수
//   Future<void> _loadMoreMessages() async {
//     if (_isLoading) return;
//
//     setState(() {
//       _isLoading = true;
//     });
//
//     // 예시: 이전 메시지 추가
//     await Future.delayed(Duration(seconds: 1)); // 서버 응답 대기
//     setState(() {
//       _messages.addAll(List.generate(5, (index) => 'Older Message ${index + 1}'));
//       _isLoading = false;
//     });
//   }
//
//   // 새 메시지를 추가하는 함수
//   void _sendMessage() {
//     if (_messageController.text.isNotEmpty) {
//       setState(() {
//         _messages.add(_messageController.text);
//       });
//       _messageController.clear();
//       _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeOut,
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Chat')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               reverse: true,
//               controller: _scrollController,
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(title: Text(_messages[index]));
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _messageController,
//                     decoration: InputDecoration(hintText: 'Enter your message'),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//

