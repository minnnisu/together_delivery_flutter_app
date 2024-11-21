import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../common/config/color/app_color.dart';
import '../../../common/routes/routes.dart';
import '../../../common/widgets/button/big_rounded_large_button.dart';

class SignupSuccessView extends StatefulWidget {
  const SignupSuccessView({super.key});

  @override
  State<SignupSuccessView> createState() => _SignupSuccessViewState();
}

class _SignupSuccessViewState extends State<SignupSuccessView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Lottie.asset(
                      width: 200,
                      'assets/lottie/lottie-check.json',
                      repeat: false,
                    ),
                    Text(
                      "회원가입을 완료하였습니다.",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "저희 서비스에 가입해주셔서 감사합니다.\n오늘도 즐거운 플로깅 되세요!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColor.gray50),
                    ),
                  ],
                ),
              ),
            ),
            // Spacer to push the button to the bottom
            SizedBox(height: 20),
            BigRoundedLargeButton(
              buttonName: "홈으로 이동",
              isActivate: true,
              onTap: () {
                Navigator.of(context).popAndPushNamed(RoutesName.login);
              },
            ),
          ],
        ),
      ),
    );
  }

}
