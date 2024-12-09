import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/user/view/widget/my_profile_image.dart';
import 'package:together_delivery_app/user/view/widget/my_info_change_button.dart';

class MyAccountProfile extends StatelessWidget {
  final String username;
  final String nickname;
  final VoidCallback onChangeUserInfo;

  const MyAccountProfile(
      {super.key,
      required this.username,
      required this.nickname,
      required this.onChangeUserInfo});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        MyProfileImage(),
        SizedBox(
          height: 12,
        ),
        Text(
          username,
          style: textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          nickname,
          style: textTheme.bodyMedium!.copyWith(color: AppColor.gray45),
        ),
        SizedBox(
          height: 7,
        ),
        MyInfoChangeButton(onChangeUserInfo: onChangeUserInfo),
      ],
    );
  }
}
