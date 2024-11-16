import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_base.dart';

import '../../model/post_detail_response_model.dart';
import '../../provider/post_detail_provider.dart';

enum PostHeaderPopUpType {
  EnterChatRoom("채팅방 입장하기"),
  RequestToInviteChatRoom("채팅방 초대 요청"),
  ReportPost("게시물 신고");

  final String meaning;

  const PostHeaderPopUpType(this.meaning);
}

class PostHeaderPopUpOther extends ConsumerWidget {
  const PostHeaderPopUpOther({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel = ref.watch(
        postDetailProvider) as PostDetailResponseModel;

    return PostHeaderPopUpBase<PostHeaderPopUpType>(
      onSelected: (popUpType) {
        if (popUpType == PostHeaderPopUpType.EnterChatRoom) {
          if (context.mounted) {
            Navigator.pushNamed(context, '/chat/room',
                arguments: postDetailModel.chatRoom.id);
          }
        }
        if(popUpType == PostHeaderPopUpType.RequestToInviteChatRoom){
          print("채팅방 초대 요청");
        }
        if(popUpType == PostHeaderPopUpType.ReportPost){
          print("게시물 신고");
        }
      },
      itemBuilder: (buildContext) {
        return [
          postDetailModel.chatRoom.isChatRoomMember ?
          PopupMenuItem(
            value: PostHeaderPopUpType.EnterChatRoom,
            child: Text(PostHeaderPopUpType.EnterChatRoom.meaning),
          ):
          PopupMenuItem(
            value: PostHeaderPopUpType.RequestToInviteChatRoom,
            child: Text(PostHeaderPopUpType.RequestToInviteChatRoom.meaning),
          ),
          PopupMenuItem(
            value: PostHeaderPopUpType.ReportPost,
            child: Text(PostHeaderPopUpType.ReportPost.meaning),
          ),
        ];
      },);
  }
}