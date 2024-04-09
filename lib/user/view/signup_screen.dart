import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/const/signupFieldType.dart';
import 'package:together_delivery_app/user/model/signup/signupInput.dart';

import '../provider/signupNotifier.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: InputForm(),
    );
  }
}

class InputForm extends ConsumerWidget {
  InputForm({super.key});

  final _formKey = GlobalKey<FormState>();

  Future<void> submitForm(BuildContext context, WidgetRef ref) async {
    final signupResult =
        await ref.watch(signupProvider.notifier).registerUser();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              signupResult ? '회원가입이 성공적으로 완료되었습니다.' : '회원가입 중 오류가 발생하였습니다')),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signup = ref.watch(signupProvider.notifier);
    final signupRead = ref.read(signupProvider.notifier);
    final signupInput = ref.watch(signupProvider);

    return PopScope(
      onPopInvoked: (didPop) => signupRead.popSignupScreen(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              InputFieldCheck(
                type: SignupFieldType.username,
                fieldName: "아이디",
                btnName: "중복확인",
              ),
              SignupInputField(
                type: SignupFieldType.password,
                fieldName: '비밀번호',
                isObscureText: true,
              ),
              SignupInputField(
                type: SignupFieldType.passwordCheck,
                fieldName: '비밀번호 확인',
                isObscureText: true,
              ),
              SignupInputField(
                type: SignupFieldType.name,
                fieldName: '이름',
              ),
              InputFieldCheck(
                type: SignupFieldType.nickname,
                fieldName: "닉네임",
                btnName: "중복확인",
              ),
              SignupInputField(
                type: SignupFieldType.email,
                fieldName: '이메일',
              ),
              SignupInputField(
                type: SignupFieldType.telephone,
                fieldName: '전화번호',
              ),
              SignupInputField(
                type: SignupFieldType.college,
                fieldName: '대학교명',
              ),
              ElevatedButton(
                onPressed: () => submitForm(context, ref),
                child: Text('회원가입'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputFieldCheck extends ConsumerWidget {
  final String fieldName;
  final String btnName;
  final SignupFieldType type;

  const InputFieldCheck({
    super.key,
    required this.fieldName,
    required this.btnName,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupWatch = ref.watch(signupProvider.notifier);
    final signupRead = ref.read(signupProvider.notifier);

    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: fieldName,
              errorText: signupWatch.getErrorValue(type),
              helperText: signupWatch.getSuccessMsg(type),
            ),
            onTap: () =>
                ref.read(signupProvider.notifier).checkFocusedFieldChange(type),
            onChanged: (value) => signupRead.updateField(type, value),
          ),
        ),
      ],
    );
  }
}

class SignupInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final bool isObscureText;
  final SignupFieldType type;

  const SignupInputField({
    super.key,
    required this.fieldName,
    this.isObscureText = false,
    this.marginBottomSize = 0,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorText = ref.watch(signupProvider.notifier).getErrorValue(type);
    final signupRead = ref.read(signupProvider.notifier);

    return TextFormField(
      decoration: InputDecoration(
        labelText: fieldName,
        errorText: errorText,
      ),
      onTap: () =>
          ref.read(signupProvider.notifier).checkFocusedFieldChange(type),
      onChanged: (value) => signupRead.updateField(type, value),
      obscureText: isObscureText,
    );
  }
}
