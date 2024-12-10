import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_item/post_item.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_item/post_list_Item_wrapper.dart';

import '../../../model/api/post_list_response.dart';

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
