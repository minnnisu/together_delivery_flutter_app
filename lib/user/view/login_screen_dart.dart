import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/provider/loginNotifier.dart';
import 'package:together_delivery_app/widgets/inputField.dart';
import 'package:together_delivery_app/widgets/submitBtn.dart';

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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Logo(),
              Expanded(
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
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
    return Form(
      key: formKey,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                fieldName: "아이디",
                marginBottomSize: 20,
                validate: (value) {
                  var validationResult = loginRead.validateUsername(value);
                  return validationResult.isValid
                      ? null
                      : validationResult.message;
                },
                onChange: (value) {
                  loginRead.updateField('username', value);
                },
              ),
              InputField(
                fieldName: "비밀번호",
                marginBottomSize: 20,
                validate: (value) {
                  var validationResult = loginRead.validatePassword(value);
                  return validationResult.isValid
                      ? null
                      : validationResult.message;
                },
                isObscureText: true,
                onChange: (value) {
                  loginRead.updateField('password', value);
                },
              ),
              ErrorMsg(
                errorMsg: loginForm.errorMsg,
              ),
            ],
          ),
          SubmitBtn(btnName: "로그인", onPressed: () => _submitForm(context, ref))
        ],
      ),
    );
  }


  // TODO: Provider로 옮기기
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

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: const Column(
        children: [
          Text(
            "한끼절약",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
          Text(
            "식사비용을 아끼기 위한 최고의 선택",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class ErrorMsg extends StatelessWidget {
  final String errorMsg;

  const ErrorMsg({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        errorMsg,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xffde6161),
        ),
      ),
    );
  }
}
