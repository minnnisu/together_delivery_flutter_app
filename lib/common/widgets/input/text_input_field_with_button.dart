import 'package:flutter/cupertino.dart';

import 'input_label.dart';
import 'text_input.dart';
import 'text_input_button.dart';
import 'text_input_state_message.dart';

class TextInputFieldWithButton extends StatelessWidget {
  final String labelName;
  final ValueChanged<String>? onTextChanged;
  final String buttonName;
  final VoidCallback onButtonTap;
  final bool isSuccess;
  final String statusMessage;
  final String? hintText;

  const TextInputFieldWithButton(
      {super.key,
      required this.labelName,
      this.onTextChanged,
      required this.buttonName,
      required this.onButtonTap,
      required this.isSuccess,
      required this.statusMessage,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputLabel(labelName),
          SizedBox(height: 9),
          Row(
            children: [
              Expanded(
                child: TextInput(
                  onChanged: onTextChanged,
                  hintText: hintText,
                ),
              ),
              SizedBox(width: 9),
              TextInputButton(
                buttonName: buttonName,
                onTap: onButtonTap,
              ),
            ],
          ),
          SizedBox(height: 9),
          TextInputStateMessage(
            isSuccess: isSuccess,
            message: statusMessage,
          )
        ],
      ),
    );
  }
}
