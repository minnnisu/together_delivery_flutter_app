import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/const.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_reply_headerType.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/common/comment_reply_header.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/reply/post_reply.dart';

class PostComment extends ConsumerWidget {
  final int commentIndex;

  const PostComment(this.commentIndex, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentBody =
        ref.watch(commentPageProvider).comments[commentIndex].comment;
    final replyLength = ref
        .watch(commentPageProvider)
        .comments[commentIndex]
        .reply
        .replies
        .length;

    return Container(
      padding: EdgeInsets.only(bottom: 12),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(borderGreyColor))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostCommentHeader(
            index: commentIndex,
            creator: commentBody.creator,
            createdAt: commentBody.createdAt,
            commentReplyHeaderType: CommentReplyHeaderType.Comment,
          ),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text(commentBody.content),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: replyLength,
            itemBuilder: (context, index) => PostReply(commentIndex, index),
          ),
        ],
      ),
    );
  }
}
