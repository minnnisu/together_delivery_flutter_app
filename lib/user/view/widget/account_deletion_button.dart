import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class AccountDeletionButton extends StatelessWidget {
  const AccountDeletionButton({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "회원 탈퇴",
            style: textTheme.bodyMedium!.copyWith(color: AppColor.warning),
          ),
        ],
      ),
    );
  }
}
