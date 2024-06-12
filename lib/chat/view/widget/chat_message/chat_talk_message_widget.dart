import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/chat/model/chat_message.dart';

import '../../../../post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_base.dart';

class ChatTalkMessageWidget extends StatelessWidget {
  final ChatTalkMessage chatMessage;
  final bool isMine;

  const ChatTalkMessageWidget(
      {required this.chatMessage, required this.isMine, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment:
            isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/user_avatar.png",
              width: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  chatMessage.sender,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff4b4b4b)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onLongPress: () {
                      final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
                      final Size screenSize = MediaQuery.of(context).size;
                      final double screenWidth = screenSize.width;
                      final double screenHeight = screenSize.height;

                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          screenWidth / 2 - 50, // 중앙을 기준으로 좌우 간격 설정
                          screenHeight / 2 - 50, // 중앙을 기준으로 상하 간격 설정
                          screenWidth / 2 + 50,
                          screenHeight / 2 + 50,
                        ),
                        items: <PopupMenuEntry>[
                          PopupMenuItem(
                            value: 'delete',
                            child: Text('삭제'),
                          ),
                        ],
                        color: Color(0xffffffff),
                        surfaceTintColor: Color(0xffffffff),
                      ).then((value) {
                        if (value == 'delete') {
                          // 옵션 1 선택 시 실행할 동작을 여기에 작성하세요.
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Text(
                        chatMessage.message,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
