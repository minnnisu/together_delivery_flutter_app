import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/view/main_view.dart';
import 'package:together_delivery_app/first_init/provider/auto_login_load_provider.dart';
import 'package:together_delivery_app/user/const/loginType.dart';
import 'package:together_delivery_app/user/view/login_screen_dart.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginCheckView(),
    );
  }
}

class LoginCheckView extends ConsumerWidget {
  const LoginCheckView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(autoLoginLoadProvider).when(
          data: (data) {
            return MainView();
          },
          error: (error, stackTrace) {
            return LoginScreen(
              loginType: LoginType.first_page_login,
            );
          },
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
