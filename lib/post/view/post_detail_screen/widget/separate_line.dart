import 'package:flutter/cupertino.dart';

import '../../../../common/const/const.dart';

class SeparateLine extends StatelessWidget {
  const SeparateLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(borderGreyColor),
            width: 5,
          ),
        ),
      ),
    );
  }
}
