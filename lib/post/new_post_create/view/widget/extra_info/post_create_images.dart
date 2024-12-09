import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';

import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class PostCreateImages extends ConsumerWidget {
  const PostCreateImages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, crossAxisSpacing: 5, mainAxisSpacing: 5),
      itemCount: postCreateState.images.length,
      itemBuilder: (context, index) {
        Asset asset = postCreateState.images[index];
        return Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetThumbImageProvider(
                    asset,
                    width: 300,
                    height: 300,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: -10,
              top: -10,
              child: IconButton(
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff000000)),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xffffffff)),
                ),
                padding: EdgeInsets.zero,
                // 패딩 설정
                constraints: BoxConstraints(),
                // constraints
                onPressed: () => ref
                    .read(newPostCreateViewModel.notifier)
                    .deleteAssets(index),
                icon: Icon(Icons.close),
              ),
            )
          ],
        );
      },
    );
  }
}
