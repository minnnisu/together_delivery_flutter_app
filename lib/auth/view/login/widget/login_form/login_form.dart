import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/view/login/widget/login_Input/login_input_field.dart';
import 'package:together_delivery_app/auth/view/login/widget/login_error_message/login_error_message.dart';
import 'package:together_delivery_app/auth/view_model/login_view_model.dart';
import 'package:together_delivery_app/common/config/utils.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/common/widgets/button/big_rounded_large_button.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        LoginInputField(
          placeHolder: "아이디",
          onChanged: (value) =>
              ref.read(loginViewModelProvider.notifier).onUsernameChange(value),
        ),
        SizedBox(
          height: 14,
        ),
        LoginInputField(
          placeHolder: "비밀번호",
          isPassword: true,
          onChanged: (value) =>
              ref.read(loginViewModelProvider.notifier).onPasswordChange(value),
        ),
        SizedBox(
          height: 14,
        ),
        LoginErrorMessage(),
        SizedBox(
          height: 32,
        ),
        BigRoundedLargeButton(
          buttonName: "로그인",
          isActivate: true,
          onTap: () async {
            var loginResult = await ref.read(loginViewModelProvider.notifier).login();
             if(!loginResult.isSuccess) {
               ref.read(loginViewModelProvider.notifier).changeErrorMessage(loginResult.message!);
               return;
             }

             Navigator.pushNamedAndRemoveUntil(context, RoutesName.home, (route) => false,);
          }
        ),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
