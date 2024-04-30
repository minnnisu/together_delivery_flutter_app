import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';

class PostCommentHeader extends ConsumerWidget {
  final int commentIndex;
  const PostCommentHeader(this.commentIndex, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentModel = ref.watch(commentPageProvider);
    
    return Container(
      child: Row(
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
                commentModel.comments[commentIndex].comment.creator,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                DateConvertor.formatDateTime(commentModel.comments[commentIndex].comment.createdAt),
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
    );
  }
}