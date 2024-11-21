import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';

import '../../../../../common/widgets/input/text_input_field_with_button.dart';
import '../../../../model/state/signup_input_state.dart';
import '../../../../view_model/signup_view_model.dart';

class NicknameInputField extends ConsumerWidget {
  const NicknameInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupInputState signupInputState = ref.watch(signupViewModelProvider);

    return TextInputFieldWithButton(
      labelName: "닉네임",
      buttonName: "중복확인",
      onButtonTap: () {
        ref.read(signupViewModelProvider.notifier).onClickNicknameCheckButton();
      },
      isSuccess: signupInputState.nickname.isValid,
      statusMessage: signupInputState.nickname.stateMessage,
      hintText: "한끼",
      onTextChanged: (value) {
        ref.read(signupViewModelProvider.notifier).onChangeNickname(value);
      },
    );
  }
}
