import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';

import '../../../../../common/widgets/input/text_input_field_with_button.dart';
import '../../../../model/state/signup_input_state.dart';
import '../../../../view_model/signup_view_model.dart';

class CollegeInputField extends ConsumerWidget {
  const CollegeInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupInputState signupInputState = ref.watch(signupViewModelProvider);

    return TextInputField(
      labelName: "대학교",
      isSuccess: signupInputState.college.isValid,
      statusMessage: signupInputState.college.stateMessage,
      hintText: "한끼 대학교",
      onChanged: (value) {
        ref.read(signupViewModelProvider.notifier).onChangeCollege(value);
      },
    );
  }
}
