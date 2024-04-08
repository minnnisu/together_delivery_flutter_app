import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/provider/loginNotifier.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.pop(context), icon: Icon(Icons.close))
        ],
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var loginRead = ref.read(loginProvider.notifier);
    var loginForm = ref.watch(loginProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '아이디',
                  ),
                  onChanged: (value) =>
                      loginRead.updateField('username', value),
                  validator: (value) {
                    var validationResult = loginRead.validateUsername(value);
                    return validationResult.isValid
                        ? null
                        : validationResult.message;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                  ),
                  onChanged: (value) =>
                      loginRead.updateField('password', value),
                  obscureText: true,
                  validator: (value) {
                    var validationResult = loginRead.validatePassword(value);
                    return validationResult.isValid
                        ? null
                        : validationResult.message;
                  },
                ),
                Text(loginForm.errorMsg),
              ],
            ),
            ElevatedButton(
                onPressed: () => _submitForm(context, ref), child: Text("로그인")),
          ],
        ),
      ),
    );
  }

  Future<void> _submitForm(BuildContext context, WidgetRef ref) async {
    var loginRead = ref.read(loginProvider.notifier);

    final formKeyState = formKey.currentState!;
    if (formKeyState.validate()) {
      bool signupResult = await loginRead.login();

      print(loginRead.username);
      print(loginRead.password);

      if (signupResult) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('로그인을 성공하였습니다.'),
          ),
        );
        Navigator.pop(context);
      }
    }
  }
}

// class Logo extends StatelessWidget {
//   const Logo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placehol der();
//   }
// }

