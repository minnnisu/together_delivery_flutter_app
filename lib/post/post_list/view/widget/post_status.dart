import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class PostActiveStatus extends StatelessWidget {
  const PostActiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.green, // 테두리 색상
          width: 1.0, // 테두리 두께
        ),
        borderRadius: BorderRadius.circular(10.0), // 테두리 둥글게 만들기
      ),
      child: Text(
        "모집중",
        style: textTheme.bodyMedium!.copyWith(
          color: AppColor.green,
        ),
      ),
    );
  }
}

class PostInactiveStatus extends StatelessWidget {
  const PostInactiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.gray60, // 테두리 색상
          width: 1.0, // 테두리 두께
        ),
        borderRadius: BorderRadius.circular(10.0), // 테두리 둥글게 만들기
      ),
      child: Text(
        "모집마감",
        style: textTheme.bodyMedium!.copyWith(color: AppColor.gray60),
      ),
    );
  }
}
