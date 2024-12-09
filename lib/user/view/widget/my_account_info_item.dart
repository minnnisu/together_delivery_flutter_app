import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class MyAccountInfoItem extends StatelessWidget {
  final String field;
  final String value;

  const MyAccountInfoItem(
      {super.key, required this.field, required this.value});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          field,
          style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.normal),
        ),
        Text(
          value,
          style: textTheme.bodyMedium!.copyWith(
            color: AppColor.gray45,
            fontWeight: FontWeight.normal
          ),
        ),
      ],
    );
  }
}
