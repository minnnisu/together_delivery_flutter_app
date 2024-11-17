import 'package:flutter/material.dart';

import '../../config/color/app_color.dart';

class TextInputButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;

  const TextInputButton({super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(13)),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Text(
          buttonName,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}
