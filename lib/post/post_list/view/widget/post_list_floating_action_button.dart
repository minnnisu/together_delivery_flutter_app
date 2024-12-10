import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

import '../../../../common/routes/routes.dart';

class PostListFloatingActionButton extends StatelessWidget {
  const PostListFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.bottomCenter, // 하단 가운데에 위치시킴
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20), // 하단 여백을 추가하여 위치를 조금 올림
        child: SizedBox(
          width: 130, // 원하는 너비
          height: 46, // 원하는 높이
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: AppColor.green3),
            ),
            elevation: 2, // 그림자 효과를 추가 (높이를 조정하여 그림자 크기 조절)
            backgroundColor: AppColor.green1,
            onPressed: () => Navigator.pushNamed(context, RoutesName.newPostCreate),
            child: Text(
              "새로운 글 작성",
              style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold, color: AppColor.green3),
            ),
          ),
        ),
      ),
    );
  }
}
