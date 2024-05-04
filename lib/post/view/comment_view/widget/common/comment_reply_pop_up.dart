import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_reply_headerType.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_input_model.dart';

import '../../provider/comment_reply_input_provider.dart';
import 'comment_reply_header.dart';

class CommentReplyPopUp extends ConsumerWidget {
  final CommentReplyHeaderType commentReplyHeaderType;
  final bool isMine;
  final int id;
  final String creator;

  const CommentReplyPopUp({
    super.key,
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
            onSelected: (CommentReplyHeaderPopUpType result) {
              if (result == CommentReplyHeaderPopUpType.Append) {
                commentReplyInputRead.updateCommentReplyInputModelBase(
                  ReplyAppendInput(targetNickname: creator, commentId: id),
                );
              }

              if (result == CommentReplyHeaderPopUpType.Modify) {
                if (commentReplyHeaderType == CommentReplyHeaderType.Comment) {
                  commentReplyInputRead
                      .updateCommentReplyInputModelBase(CommentModifyInput(commentId: id));
                }
                if (commentReplyHeaderType == CommentReplyHeaderType.Reply) {
                  commentReplyInputRead
                      .updateCommentReplyInputModelBase(ReplyModifyInput(replyId: id));
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
