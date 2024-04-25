import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/postList/model/post_summar_model.dart';
import 'package:together_delivery_app/post/view/postList/widget/smallGreyText.dart';

class PostItem extends StatelessWidget {
  final PostSummaryModel post;

  const PostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
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