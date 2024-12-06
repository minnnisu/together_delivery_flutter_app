import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/config/color/app_color.dart';

class ChatSubmitButton extends StatelessWidget {
  final VoidCallback onTap;

  const ChatSubmitButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(13)),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Text(
          "전송",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}
