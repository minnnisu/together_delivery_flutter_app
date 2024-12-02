import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';
import 'package:together_delivery_app/post/new_post_create/view_model/new_post_create_view_model.dart';

import '../../../model/post_create_state.dart';

class RestaurantNameInputField extends ConsumerWidget {
  const RestaurantNameInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return TextInputField(
      labelName: "가게 이름",
      isSuccess: postCreateState.restaurantName.isValid,
      statusMessage: postCreateState.restaurantName.stateMessage,
      onChanged: (value) => ref.read(newPostCreateViewModel.notifier).onChangeRestaurantName(value),
    );
  }
}
