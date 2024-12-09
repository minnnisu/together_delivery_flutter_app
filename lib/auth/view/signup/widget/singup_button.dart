import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/view_model/signup_view_model.dart';
import 'package:together_delivery_app/common/config/utils.dart';
import 'package:together_delivery_app/common/exception/custom_exception.dart';
import 'package:together_delivery_app/common/routes/routes.dart';

import '../../../../common/widgets/button/big_rounded_large_button.dart';

class SignupButton extends ConsumerWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BigRoundedLargeButton(
        buttonName: "확인",
        isActivate: true,
        onTap: () async {
          try {
            await ref.read(signupViewModelProvider.notifier).signup();
            Navigator.pushNamedAndRemoveUntil(context, RoutesName.signupSuccess, (route) => false,);
          } on CustomException catch(e) {
            e.display(context);
          }
        }
    );
  }
}
