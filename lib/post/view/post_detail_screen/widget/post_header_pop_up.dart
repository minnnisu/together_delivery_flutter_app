import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/model/chat_room_create_request_model.dart';
import 'package:together_delivery_app/chat/provider/chat_repository.dart';

enum PostHeaderPopUpType {
  CreateChatRoom("채팅방 만들기"),
  Modify("수정"),
  Delete("삭제");

  final String meaning;

  const PostHeaderPopUpType(this.meaning);
}

class PostHeaderPopUp extends ConsumerWidget {
  final int postId;

  const PostHeaderPopUp(this.postId, {super.key});

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
      onSelected: (PostHeaderPopUpType type) async {
        if (type == PostHeaderPopUpType.CreateChatRoom) {
          final chatRoomCreateResponseModel = await ref
              .read(chatRepositoryProvider)
              .createChatRoom(ChatRoomCreateRequestModel(postId: postId));
          if (context.mounted) {
            Navigator.pushNamed(context, '/chat/room',
                arguments: 1);
          }
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
