import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/validator/input_validation_result_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/post_input_validator.dart';

import '../const/post_input_form_field_type.dart';
import '../provider/post_input_form_provider.dart';

class PostTextInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;
  final PostInputFormFieldType type;
  final String? errorText;

  const PostTextInputField(
      {super.key,
        required this.type,
        required this.fieldName,
        this.marginBottomSize = 0,
        this.hintText,
        this.maxLines = 1,
        this.errorText,
        this.width = double.infinity});

  void onChange(WidgetRef ref, String value) {
    if(errorText != null) {
      InputValidationResultModel validationResult =
      PostInputValidator().validate(type, value);
      if (validationResult.isValid) {
        ref.read(postInputFormProvider.notifier).updateFieldErrorValue(type, null);
      }
    }

    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postInputFormProvider.notifier).checkFocusedFieldChange(type);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              errorStyle: TextStyle(color: Color(0xffcc4747)),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffd3cfcf),
              ),
              errorText: errorText,
            ),
            onTap: () => onTap(ref),
            onChanged: (value) => onChange(ref, value),
          ),
        ],
      ),
    );
  }
}

class PostSmallTextInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;
  final PostInputFormFieldType type;
  final String? errorText;

  const PostSmallTextInputField(
      {super.key,
        required this.type,
        required this.fieldName,
        this.marginBottomSize = 0,
        this.hintText,
        this.maxLines = 1,
        this.errorText,
        this.width = double.infinity});

  void onChange(WidgetRef ref, String value) {
    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postInputFormProvider.notifier).checkFocusedFieldChange(type);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              errorStyle: TextStyle(color: Color(0xffcc4747)),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffd3cfcf),
              ),
              errorText: errorText,
            ),
            onTap: () => onTap(ref),
            onChanged: (value) => onChange(ref, value),
          ),
        ],
      ),
    );
  }
}