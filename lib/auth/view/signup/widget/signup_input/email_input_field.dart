import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';

import '../../../../../common/widgets/input/text_input_field_with_button.dart';
import '../../../../model/state/signup_input_state.dart';
import '../../../../view_model/signup_view_model.dart';

class EmailInputField extends ConsumerWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupInputState signupInputState = ref.watch(signupViewModelProvider);

    return TextInputField(
      labelName: "이메일",
      isSuccess: signupInputState.email.isValid,
      statusMessage: signupInputState.email.stateMessage,
      hintText: "hanggi@example.com",
      onChanged: (value) {
        ref.read(signupViewModelProvider.notifier).onChangeEmail(value);
      },
    );
  }
}
