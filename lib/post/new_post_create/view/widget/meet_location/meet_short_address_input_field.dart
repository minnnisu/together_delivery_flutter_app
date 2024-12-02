import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/widgets/input/text_input_field.dart';
import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class MeetShortAddressInputField extends ConsumerWidget {
  const MeetShortAddressInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return TextInputField(
      labelName: "위치 설명",
      isSuccess: postCreateState.shortAddress.isValid,
      statusMessage: postCreateState.shortAddress.stateMessage,
      onChanged: (value) =>
          ref.read(newPostCreateViewModel.notifier).onChangeShortAddress(value),
      hintText: "예) 한끼 빌라 앞",
    );
  }
}
