import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/new_post_create_view_model.dart';

class PostCreateImageHeader extends ConsumerWidget {
  const PostCreateImageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "사진 등록",
            textAlign: TextAlign.end,
            style: textTheme.bodyMedium!.copyWith(),
          ),
          GestureDetector(
            onTap: () =>  ref
                .read(newPostCreateViewModel.notifier)
                .loadAssets(context), //getImage 함수를 호출해서 갤러리에서 사진 가져오기,
            child: Text(
              "추가",
              textAlign: TextAlign.end,
              style: textTheme.bodyMedium!.copyWith(color: Color(0xff874CCC)),
            ),
          ),
        ],
      ),
    );
  }
}
