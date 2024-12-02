import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/new_post_create/view_model/new_post_create_view_model.dart';

import '../../../../../common/const/restaurantCategory.dart';
import '../../../../../common/widgets/dropdown_field.dart';
import '../../../model/post_create_state.dart';

class PostCreateDropdownField extends ConsumerWidget {
  const PostCreateDropdownField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    var restaurantCategoryItems =
        RestaurantCategory.values.map<DropdownMenuItem<RestaurantCategory>>(
            (RestaurantCategory value) {
      return DropdownMenuItem<RestaurantCategory>(
        value: value,
        child: Text(value.korean),
      );
    }).toList();

    return Column(
      children: [
        DropdownField<RestaurantCategory>(
          fieldName: "카테고리",
          items: restaurantCategoryItems,
          value: postCreateState.restaurant,
          onChanged: (value) => ref.read(newPostCreateViewModel.notifier).onChangeRestaurantCategory(value!),
        ),
        SizedBox(height: 26),
      ],
    );
  }
}
