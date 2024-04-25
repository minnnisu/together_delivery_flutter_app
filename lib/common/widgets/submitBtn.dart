import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  final String btnName;
  final double width;
  final Color? backgroundColor;
  final Color textColor;
  final Function() onPressed;

  const SubmitBtn(
      {super.key,
      required this.btnName,
      required this.onPressed,
      this.width = double.infinity,
      this.backgroundColor,
      this.textColor = const Color(0xff545454)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 8),
          ),
          shadowColor: MaterialStateProperty.all(textColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Color(0xffcbcbcb),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          btnName,
          style: const TextStyle(
            color: Color(0xff4f4f4f),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
