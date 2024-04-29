import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment_error.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/post_comment_loading.dart';

import '../const/comment_page_status_type.dart';
import '../provider/comment_page_provider.dart';
import '../provider/comment_provider.dart';

class PostCommentPage extends ConsumerStatefulWidget {
  const PostCommentPage({super.key});

  @override
  PostCommentPageState createState() => PostCommentPageState();
}

class PostCommentPageState extends ConsumerState<PostCommentPage> {
  @override
  Widget build(BuildContext context) {
    final commentPage = ref.watch(commentPageProvider);
    final commentListModel = ref.watch(commentProvider);
    print(commentPage.status.name);
    return Column(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: commentListModel.length,
          itemBuilder: (context, index) => PostComment(index),
        ),
        commentPage.status == CommentPageStatusType.Loading
            ? PostCommentLoading()
            : commentPage.status == CommentPageStatusType.Error
            ? PostCommentError()
            : Container(),
      ],
    );
  }
}
