import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfoChangeItem extends StatelessWidget {
  final String field;
  final VoidCallback onChanged;

  const MyInfoChangeItem(
      {super.key, required this.field, required this.onChanged});

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
        GestureDetector(
          onTap: onChanged,
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14,
          ),
        ),
      ],
    );
  }
}
