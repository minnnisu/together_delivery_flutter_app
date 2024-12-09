import 'package:flutter/material.dart';

import '../../../common/config/color/app_color.dart';

class DayLine extends StatelessWidget {
  const DayLine({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "2024년 8월 10일 월요일",
          style: textTheme.bodyMedium!.copyWith(
            color: AppColor.gray60,
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
