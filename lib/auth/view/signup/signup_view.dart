import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/view/signup/widget/signup_form.dart';
import 'package:together_delivery_app/auth/view/signup/widget/singup_button.dart';

class SignupView extends ConsumerWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("회원가입"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Column(
          children: [
            Expanded(
              child: SignupForm(),
            ),
            SignupButton(),
          ],
        ),
      ),
    );
  }
}
