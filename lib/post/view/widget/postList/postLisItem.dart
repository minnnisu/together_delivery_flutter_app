import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/model/postSummaryModel.dart';
import 'package:together_delivery_app/post/view/widget/postList/postListItemWrapper.dart';
import 'package:together_delivery_app/post/view/widget/postList/postItem.dart';

class PostListItem extends StatelessWidget {
  final PostSummaryModel post;

  const PostListItem(
    this.post, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PostListItemWrapper(postId: post.id, postItem: PostItem(post));
  }
}