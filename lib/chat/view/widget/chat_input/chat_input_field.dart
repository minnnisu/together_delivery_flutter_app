import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/chat/view/widget/chat_input/chat_submit_button.dart';
import 'package:together_delivery_app/chat/view/widget/chat_input/chat_text_input.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class ChatInputField extends StatelessWidget {
  final ValueChanged<String>? onTextChanged;
  final VoidCallback onButtonTap;

  const ChatInputField({
    super.key,
    required this.onTextChanged,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12,),
      child: Row(
        children: [
          Expanded(
            child: ChatTextInput(
              onChanged: onTextChanged,
            ),
          ),
          SizedBox(width: 9),
          ChatSubmitButton(
            onTap: onButtonTap,
          ),
        ],
      ),
    );
  }
}
