import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/config/color/app_color.dart';

class ChatTextInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  ChatTextInput({
    super.key,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    OutlineInputBorder border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(13)),
      borderSide: BorderSide(
        color: AppColor.white,
      ),
    );

    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        errorBorder: border,
        focusedErrorBorder: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: "채팅 내용을 입력해주세요",
        hintStyle: textTheme.bodyMedium!.copyWith(color: AppColor.gray75),
        fillColor: AppColor.grayBackground,
        // 배경색 지정
        filled: true, // 배경색 활성화
      ),
      cursorColor: AppColor.gray45,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
