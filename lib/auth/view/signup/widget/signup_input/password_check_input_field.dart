import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';

import '../../../../../common/widgets/input/text_input_field_with_button.dart';
import '../../../../model/state/signup_input_state.dart';
import '../../../../view_model/signup_view_model.dart';

class PasswordCheckInputField extends ConsumerWidget {
  const PasswordCheckInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupInputState signupInputState = ref.watch(signupViewModelProvider);

    return TextInputField(
      labelName: "비밀번호 확인",
      isSuccess: signupInputState.passwordCheck.isValid,
      statusMessage: signupInputState.passwordCheck.stateMessage,
      hintText: "비밀번호 확인",
      isPassword: true,
      onChanged: (value) {
        ref.read(signupViewModelProvider.notifier).onChangePasswordCheck(value);
      },
    );
  }
}
