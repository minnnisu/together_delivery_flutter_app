import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment_error.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment_loading.dart';

class PostCommentPage extends ConsumerStatefulWidget {
  const PostCommentPage({super.key});

  @override
  PostCommentPageState createState() => PostCommentPageState();
}

class PostCommentPageState extends ConsumerState<PostCommentPage> {
  @override
  Widget build(BuildContext context) {
    final commentPage = ref.watch(commentPageProvider);
    final commentListModel = ref.watch(commentPageProvider);
    print(commentPage.status.name);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10)
,            child: Text("댓글", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: commentListModel.comments.length,
            itemBuilder: (context, index) => PostComment(index),
          ),
          commentPage.status == CommentPageStatusType.Loading
              ? PostCommentLoading()
              : commentPage.status == CommentPageStatusType.Error
              ? PostCommentError()
              : Container(),
        ],
      ),
    );
  }
}
