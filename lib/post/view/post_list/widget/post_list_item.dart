import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_summar_model.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_item.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_list_Item_wrapper.dart';
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