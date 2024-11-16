import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/money_convertor.dart';
import 'package:together_delivery_app/common/validator/input_validation_result_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/post_input_validator.dart';

import '../const/post_input_form_field_type.dart';
import '../provider/post_input_form_provider.dart';

class PostNumberInputField extends ConsumerStatefulWidget {
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

  @override
  ConsumerState<PostNumberInputField> createState() => _PostNumberInputFieldState();
}

class _PostNumberInputFieldState extends ConsumerState<PostNumberInputField> {
  TextEditingController textEditingController = TextEditingController();

  void onChange(WidgetRef ref, String value) {
    String commasRemovedNumber = MoneyConvertor.removeCommasFromNumber(value);
    if(widget.errorText != null) {
      InputValidationResultModel validationResult =
      PostInputValidator().validate(widget.type, commasRemovedNumber);
      if (validationResult.isValid) {
        ref.read(postInputFormProvider.notifier).updateFieldErrorValue(widget.type, null);
      }
    }

    String commasAddedNumber = MoneyConvertor.addCommasToNumber(int.parse(commasRemovedNumber));
    setState(() {
      textEditingController.text = commasAddedNumber;
    });

    ref.read(postInputFormProvider.notifier).updateFieldValue(widget.type, commasAddedNumber);
  }

  void onTap(WidgetRef ref) {
    ref.read(postInputFormProvider.notifier).checkFocusedFieldChange(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      margin: EdgeInsets.only(bottom: widget.marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              widget.fieldName,
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
                    controller: textEditingController,
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
                      hintText: widget.hintText,
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
          widget.errorText != null
              ? Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Text(
                    widget.errorText!,
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
