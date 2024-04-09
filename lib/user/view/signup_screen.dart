import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  Future<void> _submitForm(BuildContext context, WidgetRef ref) async {
    var signup = ref.read(signupProvider.notifier);
    print('''
          ${signup.username}
          ${signup.password}
          ${signup.passwordCheck}
          ${signup.name}
          ${signup.nickname}
          ${signup.email}
          ${signup.telephone}
          ${signup.college}
      ''');

    if (_formKey.currentState!.validate()) {
      // User user = User(
      //     username: "minnnisu2",
      //     password: "user1234#",
      //     passwordCheck: "user1234#",
      //     name: "최민수",
      //     nickname: "코린이",
      //     email: "korin123@naver.com",
      //     telephone: "010-1234-5678",
      //     college: "동국대학교 WISE캠퍼스");

      var signupResult =
          await ref.watch(signupProvider.notifier).registerUser();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                signupResult ? '회원가입이 성공적으로 완료되었습니다.' : '회원가입 중 오류가 발생하였습니다')),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signup = ref.watch(signupProvider.notifier);
    final signupRead = ref.read(signupProvider.notifier);
    final signupInput = ref.watch(signupProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            InputFieldCheck(
              fieldName: "아이디",
              btnName: "중복확인",
              errorText: signupInput.usernameErrMsg,
              helperText: signupInput.usernameCheckSuccessMessage,
              validate: (value) {
                var validationResult = signupRead.validateUsername(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
              onChanged: (value) => signupRead.updateField("username", value),
              onPressed: () => signupRead.checkUsernameDuplication(),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '비밀번호',
              ),
              onChanged: (value) => signup.updateField('password', value),
              obscureText: true,
              validator: (value) {
                var validationResult = signup.validatePassword(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '비밀번호 확인',
              ),
              onChanged: (value) {
                signup.updateField('passwordCheck', value);
              },
              obscureText: true,
              validator: (value) {
                var validationResult = signup.validatePasswordCheck(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '이름',
              ),
              onChanged: (value) => signup.updateField('name', value),
              validator: (value) {
                var validationResult = signup.validateName(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            InputFieldCheck(
              fieldName: "닉네임",
              btnName: "중복확인",
              errorText: signupInput.nicknameErrMsg,
              helperText: signupInput.nicknameCheckSuccessMessage,
              validate: (value) {
                var validationResult = signupRead.validateNickname(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
              onChanged: (value) => signupRead.updateField('nickname', value),
              onPressed: () => signupRead.checkNicknameDuplication(),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '이메일',
              ),
              onChanged: (value) => signup.updateField('email', value),
              validator: (value) {
                var validationResult = signup.validateEmail(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '전화번호',
              ),
              onChanged: (value) => signup.updateField('telephone', value),
              validator: (value) {
                var validationResult = signup.validateTelephone(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '대학교명',
              ),
              onChanged: (value) => signup.updateField('college', value),
              validator: (value) {
                var validationResult = signup.validateCollege(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            ElevatedButton(
              onPressed: () => _submitForm(context, ref),
              child: Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}

class InputFieldCheck extends StatefulWidget {
  final String fieldName;
  final String? errorText;
  final String? helperText;
  final String btnName;
  final Function(String value) validate;
  final Function(String value) onChanged;
  final Function() onPressed;

  const InputFieldCheck({
    super.key,
    required this.fieldName,
    this.errorText = null,
    this.helperText = null,
    required this.btnName,
    required this.validate,
    required this.onChanged,
    required this.onPressed,
  });

  @override
  State<InputFieldCheck> createState() => _InputFieldCheckState();
}

class _InputFieldCheckState extends State<InputFieldCheck> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: widget.fieldName,
              errorText: widget.errorText,
              helperText: widget.helperText,
            ),
            onChanged: (value) => widget.onChanged(value),
            validator: (value) => widget.validate(value!),
          ),
        ),
        TextButton(
          onPressed: widget.onPressed,
          child: Text(widget.btnName),
        )
      ],
    );
  }
}
