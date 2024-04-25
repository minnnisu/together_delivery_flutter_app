import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/const/restaurantCategory.dart';
import '../const/post_input_form_field_type.dart';
import '../provider/post_input_form_provider.dart';

class PostDropdownInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;
  final PostInputFormFieldType type;

  void onChange(WidgetRef ref, RestaurantCategory? value) {
    if (value == null) {
      ref.read(postInputFormProvider.notifier).updateFieldValue(
          type,
          ref
              .read(postInputFormProvider.notifier)
              .getRestaurantCategoryList()
              .first);
      return;
    }
    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  const PostDropdownInputField(
      {super.key,
        required this.fieldName,
        required this.type,
        this.marginBottomSize = 0,
        this.hintText,
        this.maxLines = 1,
        this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffd5d5d5)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButton<RestaurantCategory>(
              borderRadius: BorderRadius.circular(12),
              menuMaxHeight: 200,
              isExpanded: true,
              value: ref.watch(postInputFormProvider).restaurantCategory,
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => onChange(ref, value),
              items: ref
                  .read(postInputFormProvider.notifier)
                  .getRestaurantCategoryList()
                  .map<DropdownMenuItem<RestaurantCategory>>(
                      (RestaurantCategory value) {
                    return DropdownMenuItem<RestaurantCategory>(
                      value: value,
                      child: Text(value.name),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}