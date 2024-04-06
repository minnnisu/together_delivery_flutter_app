import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/constant/HttpFailure.dart';
import 'package:together_delivery_app/models/SignupInput.dart';

import '../providers/signupProvider.dart';

final signupProvider = StateNotifierProvider((ref) => SignupNotifier());

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return InputForm();
  }
}

class InputForm extends ConsumerWidget {
  InputForm({super.key});

  final _formKey = GlobalKey<FormState>();

  Future<void> _submitForm(BuildContext context, WidgetRef ref) async {
    var signup = ref.read(signupProvider.notifier);
    print('''
          ${signup.usernameErrMsg}
          ${signup.passwordErrMsg}
          ${signup.passwordCheckErrMsg}
          ${signup.nameErrMsg}
          ${signup.nicknameErrMsg}
          ${signup.emailErrMsg}
          ${signup.telephoneErrMsg}
          ${signup.collegeErrMsg}
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
      if (!signupResult.isSuccess) {
        if (signupResult.message == HttpFailure.DuplicatedUserNameError) {}

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('회원가입 중 오류가 발생하였습니다')),
        );
        return;
      }

      // 회원가입 성공 메시지 출력
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('회원가입이 성공적으로 완료되었습니다.')),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var signup = ref.watch(signupProvider.notifier);
    final signupWatch = ref.watch(signupProvider) as SignupInput;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              onChanged: (value) => signup.updateField("username", value),
              decoration: InputDecoration(
                labelText: '아이디',
              ),
              validator: (value) {
                var validationResult = signup.validateUsername(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
            ),
            Text(
              signupWatch.usernameErrMsg,
              style: TextStyle(
                color: Color(0xffde1315),
                fontSize: 12,
              ),
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
            TextFormField(
              decoration: InputDecoration(
                labelText: '닉네임',
              ),
              onChanged: (value) => signup.updateField('nickname', value),
              validator: (value) {
                var validationResult = signup.validateNickname(value);
                return validationResult.isValid
                    ? null
                    : validationResult.message;
              },
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
