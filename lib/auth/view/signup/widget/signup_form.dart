import 'package:flutter/material.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/college_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/email_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/name_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/nickname_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/password_check_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/password_input_field.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_input/user_id_input_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          UserIdInputField(),
          PasswordInputField(),
          PasswordCheckInputField(),
          NameInputField(),
          NicknameInputField(),
          EmailInputField(),
          CollegeInputField(),
        ],
      ),
    );
  }
}
