import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FieldInput extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final bool isObscureText;
  final String? hintText;

  const FieldInput({
    super.key,
    required this.fieldName,
    this.isObscureText = false,
    this.marginBottomSize = 0,
    this.hintText,
  });

  void onTap(WidgetRef ref);

  void onChange(WidgetRef ref, String value);

  String? getErrorText(WidgetRef ref);

  Widget buildWidget(WidgetRef ref){
    return Container(
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fieldName,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffd3cfcf),
              ),
              errorText: getErrorText(ref),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
            ),
            onTap: () => onTap(ref),
            onChanged: (value) => onChange(ref, value),
            obscureText: isObscureText,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return buildWidget(ref);
  }
}