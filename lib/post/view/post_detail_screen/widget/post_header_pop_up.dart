import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_room_invitation_dialog.dart';

enum PostHeaderPopUpType {
  CreateChatRoom("채팅방 만들기"),
  Modify("수정"),
  Delete("삭제");

  final String meaning;

  const PostHeaderPopUpType(this.meaning);
}

class PostHeaderPopUp extends ConsumerWidget {
  const PostHeaderPopUp(int id, {super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<PostHeaderPopUpType>(
      child: Container(
        height: 36,
        width: 32,
        padding: EdgeInsets.only(left: 4),
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.more_vert,
          size: 24,
          color: Color(0xff9a9a9a),
        ),
      ),
      color: Color(0xffffffff),
      surfaceTintColor: Color(0xffffffff),
      onSelected: (PostHeaderPopUpType type) {
        if (type == PostHeaderPopUpType.CreateChatRoom) {
          ChatRoomInvitationDialog().showChatRoomInvitationDialog(context, ref) ;
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: PostHeaderPopUpType.CreateChatRoom,
            child: Text(PostHeaderPopUpType.CreateChatRoom.meaning),
          ),
          PopupMenuItem(
            value: PostHeaderPopUpType.Modify,
            child: Text(PostHeaderPopUpType.Modify.meaning),
          ),
          PopupMenuItem(
            value: PostHeaderPopUpType.Delete,
            child: Text(PostHeaderPopUpType.Delete.meaning),
          ),
        ];
      },
    );
  }
}
