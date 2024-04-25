import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../const/post_input_form_field_type.dart';
import '../provider/post_input_form_provider.dart';

class PostNumberInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final double width;
  final PostInputFormFieldType type;
  final String? errorText;

  const PostNumberInputField({
    super.key,
    required this.type,
    required this.fieldName,
    this.marginBottomSize = 0,
    this.hintText,
    this.errorText,
    this.width = double.infinity,
  });

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
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffd5d5d5)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 12,
                        right: 0,
                        top: 6,
                        bottom: 6,
                      ),
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: Color(0xffd3cfcf),
                      ),
                      border: InputBorder.none,
                    ),
                    onTap: () => onTap(ref),
                    onChanged: (value) => onChange(ref, value),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 1),
                    child: Text(
                      "원",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
          errorText != null
              ? Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Text(
                    errorText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffcc4747),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
