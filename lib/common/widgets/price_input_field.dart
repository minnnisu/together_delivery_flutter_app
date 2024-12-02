import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_state_message.dart';

import '../util/money_convertor.dart';
import 'input/input_label.dart';

class PriceInputField extends StatefulWidget {
  final String fieldName;
  final String? hintText;
  final ValueChanged<String> onChanged;
  final bool isSuccess;
  final String message;

  const PriceInputField({
    super.key,
    required this.fieldName,
    this.hintText,
    required this.onChanged,
    required this.isSuccess,
    required this.message,
  });

  @override
  State<PriceInputField> createState() => _PriceInputFieldState();
}

class _PriceInputFieldState extends State<PriceInputField> {
  TextEditingController textEditingController = TextEditingController();

  void onChange(String value) {
    var commasRemovedNumber = MoneyConvertor.removeCommasFromNumber(value);
    widget.onChanged(commasRemovedNumber);
    String commasAddedNumber =
        MoneyConvertor.addCommasToNumber(int.parse(commasRemovedNumber));
    textEditingController.text = commasAddedNumber;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(widget.fieldName),
        SizedBox(height: 9),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.gray90),
            borderRadius: BorderRadius.all(Radius.circular(13)),
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
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      color: Color(0xffd3cfcf),
                    ),
                    border: InputBorder.none,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  onChanged: onChange,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  "원",
                  style: textTheme.bodyMedium!.copyWith(),
                ),
              ),
            ],
          ),
        ),
        TextInputStateMessage(
            isSuccess: widget.isSuccess, message: widget.message)
      ],
    );
  }
}
