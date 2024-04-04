import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/helper/auth/signupService.dart';
import 'package:together_delivery_app/models/user.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordCheckController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _nicknameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telephoneController = TextEditingController();
  TextEditingController _collegeController = TextEditingController();

  Future<void> _submitForm() async {
    // if (_formKey.currentState!.validate()) {
    //   User user = User(
    //     username: _usernameController.text,
    //     password: _passwordCheckController.text,
    //     passwordCheck: _passwordCheckController.text,
    //     name: _nameController.text,
    //     nickname: _nicknameController.text,
    //     email: _emailController.text,
    //     telephone: _telephoneController.text,
    //     college: _collegeController.text,
    //   );
    //
    //   await SignupService().registerUser(user);
    //
    //   // 회원가입 성공 메시지 출력
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('회원가입이 성공적으로 완료되었습니다.')),
    //   );
    // }

    User user = User(
        username: "minnnisu2",
        password: "user1234#",
        passwordCheck: "user1234#",
        name: "최민수",
        nickname: "코린이",
        email: "korin123@naver.com",
        telephone: "010-1234-5678",
        college: "동국대학교 WISE캠퍼스");

    await SignupService().registerUser(user);

    // 회원가입 성공 메시지 출력
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('회원가입이 성공적으로 완료되었습니다.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: '아이디'),
              validator: (value) {
                final RegExp regex = RegExp(r'^[A-Za-z0-9]+$');
                if (value == null || value.isEmpty) {
                  return '아이디를 입력하세요.';
                }
                if (!regex.hasMatch(value)) {
                  return '아이디는 영문 대소문자와 숫자만 가능합니다.';
                }
                if (value.length < 4 || value.length > 20) {
                  return '아이디는 4자 이상 20자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '비밀번호'),
              obscureText: true,
              validator: (value) {
                final RegExp regex = RegExp(
                    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$');
                if (value == null || value.isEmpty) {
                  return '비밀번호를 입력하세요.';
                }
                if (!regex.hasMatch(value)) {
                  return '비밀번호는 영문자, 숫자, 특수문자(@, \$, !, %, *, #, ?, &)를 포함해야 합니다.';
                }
                if (value.length < 8 || value.length > 20) {
                  return '비밀번호는 8자 이상 20자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordCheckController,
              decoration: InputDecoration(labelText: '비밀번호 확인'),
              obscureText: true,
              validator: (value) {
                if (value != _passwordController.text) {
                  return '비밀번호가 일치하지 않습니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: '이름'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '이름을 입력하세요.';
                }
                if (value.length < 2 || value.length > 20) {
                  return '이름은 2자 이상 20자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _nicknameController,
              decoration: InputDecoration(labelText: '닉네임'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '닉네임을 입력하세요.';
                }
                if (value.length < 2 || value.length > 10) {
                  return '닉네임은 2자 이상 10자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: '이메일'),
              validator: (value) {
                final RegExp regex =
                    RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
                if (value == null || value.isEmpty) {
                  return '이메일을 입력하세요.';
                }
                if (!regex.hasMatch(value)) {
                  return '유효한 이메일 주소를 입력하세요.';
                }
                if (value.length > 30) {
                  return '이메일은 30자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _telephoneController,
              decoration: InputDecoration(labelText: '전화번호'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '전화번호를 입력하세요.';
                }
                if (value.length > 20) {
                  return '전화번호는 20자 이하여야 합니다.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _collegeController,
              decoration: InputDecoration(labelText: '대학'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '대학을 입력하세요.';
                }
                if (value.length > 20) {
                  return '대학은 20자 이하여야 합니다.';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}
