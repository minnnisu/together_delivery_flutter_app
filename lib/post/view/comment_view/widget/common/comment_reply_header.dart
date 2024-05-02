import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_reply_headerType.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_input_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_reply_input_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/common/comment_reply_pop_up.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

// 추가 기능 여러개 일때, enum 으로 관리하는 게 좋아 보임
enum CommentReplyHeaderPopUpType {
  Append("답글 등록"),
  Modify("수정"),
  Delete("삭제");

  final String meaning;

  const CommentReplyHeaderPopUpType(this.meaning);
}

class PostCommentHeader extends ConsumerWidget {
  final int index;
  final String creator;
  final String createdAt;
  final CommentReplyHeaderType commentReplyHeaderType;

  const PostCommentHeader({
    super.key,
    required this.index,
    required this.creator,
    required this.createdAt,
    required this.commentReplyHeaderType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModelBase = ref.watch(authProvider);

    bool isMine = false;
    if (userModelBase is UserModel &&
        (userModelBase as UserModel).nickname == creator) {
      isMine = true;
    }

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Image.asset(
                  "assets/user_avatar.png",
                  width: 30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    creator,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    DateConvertor.formatDateTime(createdAt),
                    style: TextStyle(
                      color: Color(0xff9a9a9a),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CommentReplyPopUp(
            commentReplyHeaderType: commentReplyHeaderType,
            creator: creator,
            isMine: isMine,
            index: index,
          )
        ],
      ),
    );
  }
}
