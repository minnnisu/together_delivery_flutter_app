import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/routes/routes.dart';

class SignupMoveButton extends StatelessWidget {
  const SignupMoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text("회원가입"),
      onTap: () => Navigator.pushNamed(context, RoutesName.signup),
    );
  }
}
