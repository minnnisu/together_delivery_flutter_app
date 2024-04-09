import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String fieldName;
  final double marginBottomSize;
  final bool isObscureText;
  final Function(String value) validate;
  final Function(String value) onChange;

  const InputField({
    super.key,
    required this.fieldName,
    this.isObscureText = false,
    this.marginBottomSize = 0,
    required this.validate,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fieldName,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
            ),
            obscureText: isObscureText,
            cursorColor: const Color(0xff000000),
            onChanged: (value) => onChange(value),
            validator: (value) => validate(value!),
          ),
        ],
      ),
    );
  }
}