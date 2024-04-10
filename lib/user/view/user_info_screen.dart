import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/constant/const.dart';
import 'package:together_delivery_app/secureStore/secureStore.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';
import 'package:together_delivery_app/user/repository/userMeRepository.dart';
import 'package:together_delivery_app/widgets/submitBtn.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return UserInfo();
  }
}

class UserInfo extends ConsumerWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(authProvider);
    final authRead = ref.read(authProvider.notifier);
    double screenWidth = MediaQuery.of(context).size.width;

    if (userModel is UserModel) {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Color(0xffcbcbcb),
                    ), // 하단 보더 추가
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/user_avatar.png",
                      width: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        userModel.nickname,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              // ------------------------------------------ 내 계정 ------------------------------------------
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        "내 계정",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    RowItem(
                      itemName: "아이디",
                      itemValue: userModel.username,
                    ),
                    RowItem(
                      itemName: "이름",
                      itemValue: userModel.name,
                    ),
                    RowItem(
                      itemName: "이메일",
                      itemValue: userModel.email,
                    ),
                    RowItem(
                      itemName: "전화번호",
                      itemValue: userModel.telephone,
                    ),
                    RowItem(
                      itemName: "대학교명",
                      itemValue: userModel.college,
                    ),
                    RowItem(
                      itemName: "로그아웃",
                      itemNameColor: Color(0xfff83c3c),
                      // onTap: () => ref.read(authProvider.notifier).logout(),
                      onTap: () => showAlertDialog(context, ref),
                    ),
                  ],
                ),
              ),
              // TextButton(
              //   onPressed: () => getToken(ref),
              //   child: Text("토큰 정보 가져오기"),
              // ),
              // TextButton(
              //   onPressed: () => getUserInfo(ref),
              //   child: Text("유저정보 다시 가져오기"),
              // ),
            ],
          ),
        ),
      );
    }

    if (userModel is UserModelLoading) {
      authRead.updateStateNull();
    }

    return SingleChildScrollView(
      child: Container(
        // margin: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "저희 서비스가 처음이신가요?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4b4b4b),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "저희와 함께 식사비용을 아껴보아요!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SubmitBtn(
                          btnName: "회원가입",
                          onPressed: () =>
                              Navigator.pushNamed(context, '/signup'),
                          width: screenWidth * 0.4,
                        ),
                        SubmitBtn(
                          btnName: "로그인",
                          onPressed: () => Navigator.pushNamed(context, '/login'),
                          width: screenWidth * 0.4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> getToken(WidgetRef ref) async {
  print("""
accessToken:  ${await ref.read(secureStorageProvider).read(key: accessTokenKey)}
refreshToken: ${await ref.read(secureStorageProvider).read(key: refreshTokenKey)}
            """);
}

Future<void> getUserInfo(WidgetRef ref) async {
  UserModel userModel = await ref.read(userMeRepositoryProvider).getUserInfo();
  print("유저정보: ${userModel.toJson()}");
}

class RowItem extends StatelessWidget {
  final String itemName;
  final String? itemValue;
  final Color itemNameColor;
  final Function()? onTap;

  const RowItem(
      {super.key,
      required this.itemName,
      this.itemValue,
      this.itemNameColor = const Color(0xff000000),
      this.onTap});

  void doNotAnything() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              itemName,
              style: TextStyle(
                  color: itemNameColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            itemValue != null
                ? Text(
                    itemValue!,
                    style: TextStyle(
                        color: Color(0xffadadad),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                : Text(""),
          ],
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context, WidgetRef ref) {
  showDialog(
    context: context,
    //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text("로그아웃"),
        content: Text(
          "로그아웃하시겠습니까?",
        ),
        backgroundColor: Color(0xffffffff),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("닫기"),
          ),
          TextButton(
            onPressed: () async {
              await ref.read(authProvider.notifier).logout();
              Navigator.pop(context);
            },
            child: Text("확인"),
          ),
        ],
      );
    },
  );
}
