import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/widgets/price_input_field.dart';
import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class MinOrderFeeInputField extends ConsumerWidget {
  const MinOrderFeeInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return PriceInputField(
      fieldName: "최소 주문 금액",
      onChanged: (value) => ref.read(newPostCreateViewModel.notifier).onChangeMinOrderFee(value),
      isSuccess: postCreateState.minOrderFee.isValid,
      message: postCreateState.minOrderFee.stateMessage,
    );
  }
}
