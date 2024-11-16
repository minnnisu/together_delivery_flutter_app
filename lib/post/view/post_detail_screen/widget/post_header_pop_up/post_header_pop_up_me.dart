import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_base.dart';

import '../../model/post_detail_response_model.dart';
import '../../provider/post_detail_provider.dart';

enum PostHeaderPopUpType {
  EnterChatRoom("채팅방 입장하기"),
  Modify("수정"),
  Delete("삭제");

  final String meaning;

  const PostHeaderPopUpType(this.meaning);
}

class PostHeaderPopUpMe extends ConsumerWidget {
  const PostHeaderPopUpMe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;

    return PostHeaderPopUpBase<PostHeaderPopUpType>(
      onSelected: (popUpType) {
        if (popUpType == PostHeaderPopUpType.EnterChatRoom) {
          if (context.mounted) {
            Navigator.pushNamed(context, '/chat/room',
                arguments: postDetailModel.chatRoom.id);
          }
        }
        if (popUpType == PostHeaderPopUpType.Modify) {
          print("수정");
        }
        if (popUpType == PostHeaderPopUpType.Delete) {
          print("삭제");
        }
      },
      itemBuilder: (buildContext) {
        return [
          PopupMenuItem(
            value: PostHeaderPopUpType.EnterChatRoom,
            child: Text(PostHeaderPopUpType.EnterChatRoom.meaning),
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
