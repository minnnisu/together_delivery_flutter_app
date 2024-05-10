import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_summar_model.dart';
import 'package:together_delivery_app/post/view/post_list/widget/small_grey_text.dart';

class PostItem extends StatelessWidget {
  final PostSummaryModel post;

  const PostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(post.content),
        ),
        Row(
          children: [
            SmallGreyText("댓글 0"),
            const SmallGreyText("|"),
            SmallGreyText(DateConvertor.formatTimeAgo(post.createdAt)),
            const SmallGreyText("|"),
            SmallGreyText(RestaurantCategory.getCategoryFromString(post.categoryCode).name),
          ],
        )
      ],
    );
  }
}