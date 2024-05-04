import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_reply_headerType.dart';

import '../../provider/comment_page_provider.dart';
import '../common/comment_reply_header.dart';

class PostReply extends ConsumerWidget {
  final int commentIndex;
  final int replyIndex;

  const PostReply(this.commentIndex, this.replyIndex, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reply = ref
        .watch(commentPageProvider)
        .comments[commentIndex]
        .reply
        .replies[replyIndex];

    return Padding(
      padding: EdgeInsets.only(top: 16,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostCommentHeader(
            id: reply.replyId!,
            commentIndex: commentIndex,
            replyIndex: replyIndex!,
            creator: reply.creator,
            createdAt: reply.createdAt,
            commentReplyHeaderType: CommentReplyHeaderType.Reply,
          ),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text(reply.content),
          ),
        ],
      ),
    );
  }
}
