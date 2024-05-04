import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_reply_headerType.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_input_model.dart';

import '../../provider/comment_reply_input_provider.dart';
import 'comment_reply_header.dart';

class CommentReplyPopUp extends ConsumerWidget {
  final CommentReplyHeaderType commentReplyHeaderType;
  final int id; // comment or reply id
  final int commentIndex;
  final int? replyIndex;
  final bool isMine;
  final String creator;

  const CommentReplyPopUp({
    super.key,
    required this.commentIndex,
    this.replyIndex,
    required this.commentReplyHeaderType,
    required this.creator,
    required this.isMine,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentReplyInputRead = ref.read(commentReplyInputProvider.notifier);
    List<PopupMenuItem<CommentReplyHeaderPopUpType>> menuItems = [];

    return (commentReplyHeaderType == CommentReplyHeaderType.Comment || isMine)
        ? PopupMenuButton<CommentReplyHeaderPopUpType>(
            child: Container(
              height: 36,
              width: 48,
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.more_vert, size: 16, color: Color(0xff9a9a9a),
              ),
            ),
            color: Color(0xffffffff),
            surfaceTintColor:  Color(0xffffffff),
            onSelected: (CommentReplyHeaderPopUpType result) {
              if (result == CommentReplyHeaderPopUpType.Append) {
                commentReplyInputRead.updateCommentReplyInputModelBase(
                  ReplyAppendInput(
                    targetNickname: creator,
                    commentId: id,
                    commentIndex: commentIndex,
                  ),
                );
              }

              if (result == CommentReplyHeaderPopUpType.Modify) {
                if (commentReplyHeaderType == CommentReplyHeaderType.Comment) {
                  commentReplyInputRead
                      .updateCommentReplyInputModelBase(CommentModifyInput(
                    commentId: id,
                    commentIndex: commentIndex,
                  ));
                }
                if (commentReplyHeaderType == CommentReplyHeaderType.Reply) {
                  commentReplyInputRead
                      .updateCommentReplyInputModelBase(ReplyModifyInput(
                    replyId: id,
                    commentIndex: commentIndex,
                    replyIndex: replyIndex!,
                  ));
                }
              }
            },
            itemBuilder: (BuildContext buildContext) {
              if (commentReplyHeaderType == CommentReplyHeaderType.Comment) {
                menuItems.add(PopupMenuItem(
                  value: CommentReplyHeaderPopUpType.Append,
                  child: Text(CommentReplyHeaderPopUpType.Append.meaning),
                ));
              }

              if (isMine) {
                menuItems.add(PopupMenuItem(
                  value: CommentReplyHeaderPopUpType.Modify,
                  child: Text(CommentReplyHeaderPopUpType.Modify.meaning),
                ));

                menuItems.add(PopupMenuItem(
                  value: CommentReplyHeaderPopUpType.Delete,
                  child: Text(CommentReplyHeaderPopUpType.Delete.meaning),
                ));
              }

              return menuItems;
            },
          )
        : Container();
  }
}
