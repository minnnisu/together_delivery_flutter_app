import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/input_label.dart';

import '../config/color/app_color.dart';

class DropdownField<T> extends ConsumerWidget {
  final String fieldName;
  final int maxLines;
  final ValueChanged<T?>? onChanged;
  final List<DropdownMenuItem<T>>? items;
  final T? value;

  const DropdownField(
      {super.key,
      required this.fieldName,
      required this.items,
      this.maxLines = 1,
      this.onChanged,
      this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(fieldName),
        SizedBox(height: 9),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.gray90),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButton<T>(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
            menuMaxHeight: 200,
            isExpanded: true,
            elevation: 16,
            underline: Container(
              height: 2,
            ),
            value: value,
            onChanged: onChanged,
            items: items,
          ),
        ),
      ],
    );
  }
}
