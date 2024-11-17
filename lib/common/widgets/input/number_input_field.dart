import 'package:flutter/cupertino.dart';

import 'input_label.dart';
import 'number_input.dart';
import 'text_input_state_message.dart';

class NumberInputField extends StatelessWidget {
  final String? hintText;
  final String labelName;
  final ValueChanged<String>? onChanged;
  final bool isSuccess;
  final String statusMessage;

  const NumberInputField(
      {super.key,
        this.hintText,
        required this.labelName,
        this.onChanged,
        required this.isSuccess,
        required this.statusMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(labelName),
        SizedBox(height: 9),
        NumberInput(
          hintText: hintText,
          onChanged: onChanged,
        ),
        SizedBox(height: 9),
        TextInputStateMessage(
          isSuccess: isSuccess,
          message: statusMessage,
        ),
      ],
    );
  }
}
