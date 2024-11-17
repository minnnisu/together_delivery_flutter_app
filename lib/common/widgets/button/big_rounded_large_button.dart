import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/color/app_color.dart';

class BigRoundedLargeButton extends StatelessWidget {
  final String buttonName;
  final bool isActivate;
  final VoidCallback onTap;

  const BigRoundedLargeButton({
    super.key,
    required this.buttonName,
    required this.isActivate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isActivate ? AppColor.primaryColor : AppColor.gray60,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
