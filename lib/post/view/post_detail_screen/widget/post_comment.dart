import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/widgets/border.dart';

class SmallUserInfo extends StatelessWidget {
  const SmallUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/user_avatar.png",
              width: 30,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "코린이",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                "04/01 10:04",
                style: TextStyle(
                  color: Color(0xff9a9a9a),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PostCommentAndReply extends StatelessWidget {
  const PostCommentAndReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: bottomBorder,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostComment(),
          PostReply(),
        ],
      ),
    );
  }
}

class PostComment extends StatelessWidget {
  const PostComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallUserInfo(),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text("몇시에 시켜 드실건가요?"),
          ),
        ],
      ),
    );
  }
}

class PostReply extends StatelessWidget {
  const PostReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(12.0), // 테두리 둥글게 만들기
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallUserInfo(),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text("6시 어떠신가요?"),
          ),
        ],
      ),
    );
  }
}