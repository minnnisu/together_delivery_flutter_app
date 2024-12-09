import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/restaurant_info/post_create_dropdown_field.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/restaurant_info/restaurant_name_input_field.dart';

import '../section_header/post_create_section_header.dart';
import 'delivery_fee_input_field.dart';
import 'min_order_fee_input_field.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostCreateSectionHeader(
          title: "가게 정보",
        ),
        Row(
          children: [
            Expanded(
              child: PostCreateDropdownField(),
            ),
            SizedBox(
              width: 7,
            ),
            Expanded(
              child: RestaurantNameInputField(),
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Expanded(
              child: MinOrderFeeInputField(),
            ),
            SizedBox(
              width: 7,
            ),
            Expanded(
              child: DeliveryFeeInputField(),
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
      ],
    );
  }
}
