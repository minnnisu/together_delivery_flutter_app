import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/config/color/app_color.dart';

class MyInfoChangeButton extends StatelessWidget {
  final VoidCallback onChangeUserInfo;

  const MyInfoChangeButton({super.key, required this.onChangeUserInfo});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return OutlinedButton(
      onPressed: onChangeUserInfo,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColor.green2, width: 1), // 보더 색상과 두께
        backgroundColor: AppColor.green1, // 배경색
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26), // 모서리 둥글기
        ),
      ),
      child: Text(
        "프로필 수정하기",
        style: textTheme.bodyMedium!.copyWith(color: AppColor.green2), // 텍스트 스타일
      ),
    );
  }
}
