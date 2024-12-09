import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/widgets/input/text_input_field_with_button.dart';
import '../../../../model/state/signup_input_state.dart';
import '../../../../view_model/signup_view_model.dart';

class UserIdInputField extends ConsumerWidget {
  const UserIdInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupInputState signupInputState = ref.watch(signupViewModelProvider);

    return TextInputFieldWithButton(
      labelName: "아이디",
      buttonName: "중복확인",
      onButtonTap: () {
        ref.read(signupViewModelProvider.notifier).onClickUserIdCheckButton();
      },
      isSuccess: signupInputState.userId.isValid,
      statusMessage: signupInputState.userId.stateMessage,
      hintText: "아이디",
      onTextChanged: (value) {
        ref.read(signupViewModelProvider.notifier).onChangeUserId(value);
      },
    );
  }
}
