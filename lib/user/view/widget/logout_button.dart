import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/user/view_model/my_account_view_model.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () async {
        await ref.read(myAccountViewModelProvider).logout();
        Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesName.login,
          (route) => false,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "로그아웃",
            style: textTheme.bodyMedium!.copyWith(),
          ),
        ],
      ),
    );
  }
}
