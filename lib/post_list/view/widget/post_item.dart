import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';
import 'package:together_delivery_app/post_list/view/widget/post_item_content.dart';
import 'package:together_delivery_app/post_list/view/widget/post_item_header.dart';
import 'package:together_delivery_app/post_list/view/widget/post_item_restaurant_info.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostItemHeader(post),
        PostItemRestaurantInfo(post),
        post.content != null ? PostItemContent(post) : Container(),
      ],
    );
  }
}
