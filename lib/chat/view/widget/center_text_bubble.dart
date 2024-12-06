import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class CenterTextBubble extends StatelessWidget {
  final String message;
  const CenterTextBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message, style: textTheme.bodyMedium!.copyWith(color: AppColor.gray60),),
        ],
      ),
    );
  }
}
