import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:together_delivery_app/auth/view/login/widget/description/together_delivery_description.dart';
import 'package:together_delivery_app/auth/view/login/widget/login_form/login_form.dart';
import 'package:together_delivery_app/auth/view/login/widget/signup_move_button/signup_move_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TogetherDeliveryDescription(),
              LoginForm(),
              SignupMoveButton(),
            ],
          ),
        ),
      ),
    );
  }
}

