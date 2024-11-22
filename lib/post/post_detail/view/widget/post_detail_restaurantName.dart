import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/post_detail_response_model.dart';

class PostDetailRestaurantName extends ConsumerWidget {
  final Post post;

  const PostDetailRestaurantName(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;


    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(
        post.restaurantName,
        style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
