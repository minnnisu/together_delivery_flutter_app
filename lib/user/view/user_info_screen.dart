import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/model/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfo(),
        TextButton(onPressed: () {
          Navigator.pushNamed(context, '/signup');
        }, child: Text("회원가입"),),
        TextButton(onPressed: () {
          Navigator.pushNamed(context, '/login');
        }, child: Text('로그인'),),
      ],
    );
  }
}

class UserInfo extends ConsumerWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(authProvider);
    final authRead = ref.read(authProvider.notifier);

    if(userModel is UserModel) {
      return Column(
        children: [
          Text("아이디: ${userModel.username}"),
          Text("이름: ${userModel.name}"),
          Text("닉네임: ${userModel.nickname}"),
          Text("이메일: ${userModel.email}"),
          Text("휴대폰번호: ${userModel.telephone}"),
          Text("대학교: ${userModel.college}"),
        ],
      );
    }

    if(userModel is UserModelLoading) {
      authRead.updateStateNull();
    }

    return Text("로그인이 필요합니다.");
  }
}

