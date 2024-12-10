import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_item/post_status.dart';

import '../../../model/api/post_list_response.dart';

class PostItemHeader extends ConsumerWidget {
  final Post post;

  const PostItemHeader(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          post.restaurantName,
          style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                post.nickname,
                style: textTheme.bodySmall!.copyWith(color: AppColor.gray60),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                DateConvertor.formatTimeAgo(post.createdAt),
                style: textTheme.bodySmall!.copyWith(color: AppColor.gray60),
              ),
            ),
            post.status ? PostActiveStatus() : PostInactiveStatus()
          ],
        )
      ],
    );
  }
}
