import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment_header.dart';
class PostComment extends ConsumerWidget {
  final int commentIndex;
  const PostComment(this.commentIndex, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentModel = ref.watch(commentProvider);

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostCommentHeader(commentIndex),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text(commentModel[commentIndex].content),
          ),
        ],
      ),
    );
  }
}

