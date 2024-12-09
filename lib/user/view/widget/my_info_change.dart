import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/user/view/widget/my_info_change_item.dart';

class MyInfoChange extends StatelessWidget {
  const MyInfoChange({super.key});

  @override
  Widget build(BuildContext context) {
    var gap = SizedBox(height: 16,);

    return Column(
      children: [
        MyInfoChangeItem(field: "비밀번호 수정하기", onChanged: () {  },),
        gap,
        MyInfoChangeItem(field: "이메일 수정하기", onChanged: () {  },),
        gap,
        MyInfoChangeItem(field: "대학교 수정하기", onChanged: () {  },),
      ],
    );
  }
}
