import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';

import '../../../post_list/view/widget/post_item/post_status.dart';
import '../../model/post_detail_response_model.dart';

class PostDetailHeader extends ConsumerWidget {
  final Post post;

  const PostDetailHeader(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PostDetailHeaderLeft(post),
          PostDetailHeaderRight(post),
        ],
      ),
    );
  }
}

class PostDetailHeaderLeft extends ConsumerWidget {
  final Post post;

  const PostDetailHeaderLeft(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Image.asset(
            "assets/user_avatar.png",
            width: 40,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Text(
                post.nickname,
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                )
              ),
            ),
            Text(
              DateConvertor.formatDateTime(post.createdAt),
              style:textTheme.bodyMedium?.copyWith(
                color: Color(0xff9a9a9a),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PostDetailHeaderRight extends ConsumerWidget {
  final Post post;

  const PostDetailHeaderRight(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        post.status ? PostActiveStatus() : PostInactiveStatus(),
      ],
    );
  }
}
