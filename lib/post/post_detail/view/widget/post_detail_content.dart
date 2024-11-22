import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/post_detail_response_model.dart';

class PostContent extends ConsumerWidget {
  final Post post;

  const PostContent(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.only(top: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "작성자의 글",
            style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              post.content!,
              style: textTheme.bodyMedium!.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
