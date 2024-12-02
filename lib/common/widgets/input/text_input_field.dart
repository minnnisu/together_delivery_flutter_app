import 'package:flutter/cupertino.dart';

import 'input_label.dart';
import 'text_input.dart';
import 'text_input_state_message.dart';

class TextInputField extends StatelessWidget {
  final String? hintText;
  final String labelName;
  final ValueChanged<String>? onChanged;
  final bool isSuccess;
  final String statusMessage;
  final bool isPassword;
  final int? maxLines;

  const TextInputField(
      {super.key,
      this.hintText,
      required this.labelName,
      this.onChanged,
      this.isPassword = false,
      required this.isSuccess,
      required this.statusMessage,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(labelName),
        SizedBox(height: 9),
        TextInput(
          hintText: hintText,
          onChanged: onChanged,
          isPassword: isPassword,
          maxLines: maxLines,
        ),
        SizedBox(height: 9),
        TextInputStateMessage(
          isSuccess: isSuccess,
          message: statusMessage,
        )
      ],
    );
  }
}
