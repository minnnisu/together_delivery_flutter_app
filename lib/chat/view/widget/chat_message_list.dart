import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/const/chat_message_sender_type.dart';
import 'package:together_delivery_app/chat/view/widget/center_text_bubble.dart';
import 'package:together_delivery_app/chat/view/widget/my_chat_bubble.dart';
import 'package:together_delivery_app/chat/view/widget/other_chat_bubble.dart';
import 'package:together_delivery_app/chat/view_model/chat_message_view_model.dart';

class ChatMessageList extends ConsumerStatefulWidget {
  final int chatRoomId;
  const ChatMessageList({required this.chatRoomId, super.key});

  @override
  ConsumerState<ChatMessageList> createState() => _ChatMessageListState();
}

class _ChatMessageListState extends ConsumerState<ChatMessageList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    var chatMessageListState = ref.read(chatMessageViewModelProvider);

    // 초기 데이터 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchPage(chatMessageListState.nextCursor);
    });


    // 스크롤 이벤트 리스너 추가
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !chatMessageListState.isLoading) {
        _fetchPage(chatMessageListState.nextCursor);
      }
    });
  }

  Future<void> _fetchPage(int? nextCursor) async {
    ref.read(chatMessageViewModelProvider.notifier).onChangeIsLoading(true);

    try {
      var chatReceiveMessageModelList = await ref.read(chatMessageViewModelProvider.notifier).fetchChatMessage(widget.chatRoomId);

      if(chatReceiveMessageModelList.isNotEmpty) {
        if(chatReceiveMessageModelList.last.messageId - 1 < 0) {
          ref.read(chatMessageViewModelProvider.notifier).addMessageList(chatReceiveMessageModelList);
          ref.read(chatMessageViewModelProvider.notifier).onChangeHasMore(false);
          return;
        }

        ref.read(chatMessageViewModelProvider.notifier).addMessageList(chatReceiveMessageModelList);
        ref.read(chatMessageViewModelProvider.notifier).onChangeNextCursor(chatReceiveMessageModelList.last.messageId - 1);
        return;
      }

      // _pagingController.appendLastPage(List.empty());
      ref.read(chatMessageViewModelProvider.notifier).addMessageList(chatReceiveMessageModelList);
      ref.read(chatMessageViewModelProvider.notifier).onChangeHasMore(false);
    } catch (error) {
      print(error);
    } finally {
      ref.read(chatMessageViewModelProvider.notifier).onChangeIsLoading(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    var chatMessageListState = ref.watch(chatMessageViewModelProvider);

    return Expanded(
      child: Stack(
        children: [
          Container(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: chatMessageListState.chatMessages.length,
              reverse: true,
              itemBuilder: (context, index) {
                final chatMessage = chatMessageListState.chatMessages[index];

                if(chatMessage.type == "OPEN" || chatMessage.type == "ENTER") {
                  return CenterTextBubble(message: chatMessage.message);
                }

                if (chatMessage.chatMessageSenderType == ChatMessageSenderType.me) {
                  return MyChatBubble(
                    chatMessage: chatMessage.message,
                    createdAt: chatMessage.createdAt,
                  );
                }

                return OtherChatBubble(
                  chatMessage: chatMessage.message,
                  sender: chatMessage.sender,
                  createdAt: chatMessage.createdAt,
                );
              },
            ),
          ),
          if (chatMessageListState.isLoading) // 로딩 인디케이터
            Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width / 2 - 15,
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
