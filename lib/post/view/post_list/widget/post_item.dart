import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_summar_model.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_item_content.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_item_header.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_item_restaurant_info.dart';
import 'package:together_delivery_app/post/view/post_list/widget/small_grey_text.dart';

class PostItem extends StatelessWidget {
  final PostSummaryModel post;

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
