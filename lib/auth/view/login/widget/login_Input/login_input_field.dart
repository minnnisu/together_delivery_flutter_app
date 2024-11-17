import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/input/text_input.dart';

class LoginInputField extends StatelessWidget {
  final String? placeHolder;
  final ValueChanged<String>? onChanged;
  final bool isPassword;

  const LoginInputField(
      {super.key,
        this.placeHolder,
        this.onChanged, this.isPassword = false,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInput(
          hintText: placeHolder,
          onChanged: onChanged,
          isPassword: isPassword,
        ),
      ],
    );
  }
}
