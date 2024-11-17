import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/color/app_color.dart';

class TextInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final bool isPassword;

  TextInput({super.key, this.onChanged, this.hintText, this.isPassword = false}); // 생성자에서 onChanged를 초기화

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.gray90,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(13)));

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        errorBorder: border,
        focusedErrorBorder: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: hintText,
      ),
      cursorColor: AppColor.gray45,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyMedium,
      obscureText: isPassword,
    );
  }
}
