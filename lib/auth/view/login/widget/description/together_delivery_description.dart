import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class TogetherDeliveryDescription extends StatelessWidget {
  const TogetherDeliveryDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // 세로 방향 가운데 정렬
      children: [
        Text(
          "한끼 절약",
          style: textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold, color: AppColor.primaryColor, fontFamily: "HancomMalangMalang"),
        ),
        const SizedBox(height: 8), // 텍스트 간 간격 추가
        Text(
          "대학생들을 위한 배달비 절약 서비스",
          style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold, fontFamily: "HancomMalangMalang"),
        ),
      ],
    );
  }
}
