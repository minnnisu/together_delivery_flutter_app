import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/auth/view_model/login_view_model.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class LoginErrorMessage extends ConsumerWidget {
  const LoginErrorMessage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      ref.watch(loginViewModelProvider).errorMessage,
      style: TextStyle(color: AppColor.warning),
    );
  }
}
