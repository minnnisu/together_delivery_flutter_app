import 'package:flutter/cupertino.dart';

import '../../../common/config/color/app_color.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 143,
      height: 143,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // 둥근 모양
        border: Border.all(
          // 보더 설정
          color: AppColor.gray90, // 보더 색상
          width: 0.5, // 보더 두께
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/user_avatar.png',
          ),
          fit: BoxFit.cover, // 이미지가 영역을 채우도록 설정
        ),
      ),
    );
  }
}
