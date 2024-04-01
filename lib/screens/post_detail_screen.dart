import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const BoxDecoration bottomBorder = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      width: 0.5,
      color: Color(0xffcbcbcb),
    ), // 하단 보더 추가
  ),
);

class PostDetailScreen extends StatefulWidget {
  PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String index = ModalRoute.of(context)!.settings.arguments as String;
    print(index);
    return Scaffold(
      appBar: AppBar(
        title: Text("배달게시물"),
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(),
          PostDetail(),
          PostCommentAndReply(),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/user_avatar.png",
              width: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "코린이",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              Text(
                "04/01 10:04",
                style: TextStyle(
                  color: Color(0xff9a9a9a),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

class PostStatus extends StatelessWidget {
  const PostStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 1),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff80cd53), // 테두리 색상
          width: 1.0, // 테두리 두께
        ),
        borderRadius: BorderRadius.circular(10.0), // 테두리 둥글게 만들기
      ),
      child: Text(
        "진행중",
        style: TextStyle(color: Color(0xff80cd53), fontWeight: FontWeight.w600),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserInfo(),
        PostStatus(),
      ],
    );
  }
}

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: bottomBorder,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostTitle(),
          PostContent(),
          PostExtraInfo(),
        ],
      ),
    );
  }
}

class PostTitle extends StatelessWidget {
  const PostTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        "같이 배달 시켜 먹을 사람",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class PostContent extends StatelessWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: bottomBorder,
      child: Text("치킨 배달시켜 먹을건데 같이 먹을 사람 구해요 \n호식이 두마리치킨 생각하고 있어요!"),
    );
  }
}

class PostExtraInfo extends StatelessWidget {
  const PostExtraInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "카테고리",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("치킨"),
                Text(
                  "가게이름",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("호식이 두마리치킨 황성점"),
                Text(
                  "최소배달금액",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("12000원"),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "배달비",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("3000원"),
                Text(
                  "만남장소",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("동국대학교 WISE캠퍼스 금강동"),
              ],
            ),
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
