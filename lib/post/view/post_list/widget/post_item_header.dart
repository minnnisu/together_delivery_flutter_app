import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_status.dart';

import '../model/post_summar_model.dart';

class PostItemHeader extends ConsumerWidget {
  final PostSummaryModel post;

  const PostItemHeader(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(post.restaurantName, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,)),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(post.nickname, style: TextStyle(color: Color(0xff9b9b9b)),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(DateConvertor.formatTimeAgo(post.createdAt), style: TextStyle(color: Color(0xff9b9b9b))),
            ),
            post.status ? PostActiveStatus() : PostInactiveStatus()
          ],
        )
      ],
    );
  }
}
