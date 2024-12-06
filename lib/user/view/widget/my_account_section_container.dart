import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class MyAccountSectionContainer extends StatelessWidget {
  final String sectionName;
  final Widget body;

  const MyAccountSectionContainer(
      {super.key, required this.sectionName, required this.body});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionName,
            style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.gray92, // 보더 색상
                width: 1, // 보더 두께
              ),
              borderRadius: BorderRadius.circular(14), // 둥근 모서리
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: body,
            ), // 내부에 포함될 위젯
          ),
        ],
      ),
    );
  }
}
