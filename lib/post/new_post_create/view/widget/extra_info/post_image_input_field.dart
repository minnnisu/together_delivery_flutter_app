import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/extra_info/post_create_image_header.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/extra_info/post_create_images.dart';


class PostImageInputField extends ConsumerWidget {
  final double marginBottomSize;

  const PostImageInputField({
    super.key,
    this.marginBottomSize = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Column(
      children: [
        PostCreateImageHeader(),
        PostCreateImages(),
      ],
    );
  }
}
