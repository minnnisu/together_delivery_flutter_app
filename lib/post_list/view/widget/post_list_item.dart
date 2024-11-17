import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';
import 'package:together_delivery_app/post_list/view/widget/post_item.dart';
import 'package:together_delivery_app/post_list/view/widget/post_list_Item_wrapper.dart';

class PostListItem extends StatelessWidget {
  final Post post;

  const PostListItem({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return PostListItemWrapper(postId: post.id, postItem: PostItem(post));
  }
}
