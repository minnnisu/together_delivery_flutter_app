import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/view/postList/model/post_summar_model.dart';
import 'package:together_delivery_app/post/view/postList/widget/postItem.dart';
import 'package:together_delivery_app/post/view/postList/widget/postListItemWrapper.dart';
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