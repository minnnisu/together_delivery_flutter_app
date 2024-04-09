import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
import 'package:together_delivery_app/user/provider/authNotifier.dart';
import 'package:together_delivery_app/widgets/submitBtn.dart';

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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputFieldCheck(
                  marginBottomSize: 16,
                  type: SignupFieldType.username,
                  fieldName: "아이디",
                  btnName: "중복확인",
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.password,
                  fieldName: '비밀번호',
                  isObscureText: true,
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.passwordCheck,
                  fieldName: '비밀번호 확인',
                  isObscureText: true,
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.name,
                  fieldName: '이름',
                ),
                InputFieldCheck(
                  marginBottomSize: 16,
                  type: SignupFieldType.nickname,
                  fieldName: "닉네임",
                  btnName: "중복확인",
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.email,
                  fieldName: '이메일',
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.telephone,
                  fieldName: '전화번호',
                ),
                SignupInputField(
                  marginBottomSize: 16,
                  type: SignupFieldType.college,
                  fieldName: '대학교명',
                ),
                SubmitBtn(
                  btnName: "회원가입",
                  onPressed: () => submitForm(context, ref),
                ),
              ],
            ),

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
  final double marginBottomSize;

  const InputFieldCheck({
    super.key,
    required this.fieldName,
    required this.btnName,
    required this.type,
    this.marginBottomSize = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupWatch = ref.watch(signupProvider.notifier);
    final signupRead = ref.read(signupProvider.notifier);

    return Container(
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: fieldName,
              labelStyle: const TextStyle(
                fontSize: 12.0,
                color: Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              errorText: signupWatch.getErrorValue(type),
              helperText: signupWatch.getSuccessMsg(type),
              helperStyle: const TextStyle(
                fontSize: 12.0,
                color: Color(0xff3f993b),
                fontWeight: FontWeight.w600,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
            ),
            onTap: () {
              ref.read(signupProvider.notifier).checkFocusedFieldChange(type);
            },
            onChanged: (value) => signupRead.updateField(type, value),
          ),
        ],
      ),
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

    return Container(
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   fieldName,
          //   style: const TextStyle(
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          TextFormField(
            decoration: InputDecoration(
              labelText: fieldName,
              labelStyle: const TextStyle(
                fontSize: 12.0,
                color: Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              errorText: errorText,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd5d5d5),
                  width: 0.9,
                ),
              ),
            ),
            onTap: () =>
                ref.read(signupProvider.notifier).checkFocusedFieldChange(type),
            onChanged: (value) => signupRead.updateField(type, value),
            obscureText: isObscureText,
          ),
        ],
      ),
    );
  }
}
