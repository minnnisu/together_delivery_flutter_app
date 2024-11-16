import 'package:flutter/cupertino.dart';

class SmallGreyText extends StatelessWidget {
  final String text;

  const SmallGreyText(this.text, {super.key, required});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xff9A9A9A),
        ),
      ),
    );
  }
}
