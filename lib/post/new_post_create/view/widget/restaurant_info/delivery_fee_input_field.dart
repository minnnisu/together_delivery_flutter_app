import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/widgets/price_input_field.dart';
import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class DeliveryFeeInputField extends ConsumerWidget {
  const DeliveryFeeInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return PriceInputField(
      fieldName: "배달비",
      onChanged: (value) => ref.read(newPostCreateViewModel.notifier).onChangeDeliverFee(value),
      isSuccess: postCreateState.deliveryFee.isValid,
      message: postCreateState.deliveryFee.stateMessage,
    );
  }
}
