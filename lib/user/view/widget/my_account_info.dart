import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/user/view/widget/my_account_info_item.dart';

class MyAccountInfo extends StatelessWidget {
  final String username;
  final String email;
  final String college;
  const MyAccountInfo({super.key, required this.username, required this.email, required this.college});

  @override
  Widget build(BuildContext context) {
    var gap = SizedBox(height: 16,);

    return Column(
      children: [
        MyAccountInfoItem(field: "아이디", value: username),
        gap,
        MyAccountInfoItem(field: "이메일", value: email),
        gap,
        MyAccountInfoItem(field: "대학교", value: college),
      ],
    );
  }
}
