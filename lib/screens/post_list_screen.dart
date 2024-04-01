import 'dart:math';

import 'package:flutter/material.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

var postList = [
  {
    "id": "1",
    "title": "치킨 시켜먹을 사람",
    "content": "석장동 GS앞에서 같이 치킨 주문해서 먹을사람 구해요",
    "commentCount": "2",
    "createdAt": "3",
    "category": "치킨",
  },
  {
    "id": "2",
    "title": "연화동 치킨",
    "content": "후참잘",
    "commentCount": "0",
    "createdAt": "5",
    "category": "치킨",
  },
  {
    "id": "3",
    "title": "피자 드실분",
    "content": "한판 다 못 먹어서 나눠 먹어요",
    "commentCount": "3",
    "createdAt": "7",
    "category": "피자",
  },
  {
    "id": "4",
    "title": "반야 피자",
    "content": "피자 나눠 드실분 계신가요?",
    "commentCount": "0",
    "createdAt": "20",
    "category": "피자",
  },
  {
    "id": "5",
    "title": "커피 배달해서 사람",
    "content": "커피 배달해서 먹을 사람",
    "commentCount": "1",
    "createdAt": "28",
    "category": "커피",
  },
  {
    "id": "6",
    "title": "디저트 시켜 먹을 사람",
    "content": "기숙사 사는 사람 한정",
    "commentCount": "2",
    "createdAt": "31",
    "category": "디저트",
  },
];

class _PostListScreenState extends State<PostListScreen> {
  List<Widget> postItems = [];

  @override
  void initState() {
    super.initState();
    for (Map<String, String> element in postList) {
      postItems.add(PostItem(postInfo: element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
              color: Color(0xffcbcbcb),
            ),
          ),
        ),
        child: ListView(children: postItems));
  }
}

class PostItem extends StatefulWidget {
  Map<String, String> postInfo;

  PostItem({super.key, required this.postInfo});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(onTap: () {
      // 해당 컨테이너를 터치하면 다른 페이지로 이동
      Navigator.pushNamed(context, '/postDetail', arguments: widget.postInfo["id"]!);
    },child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Color(0xffcbcbcb),
            ), // 하단 보더 추가
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.postInfo["title"]!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(widget.postInfo["content"]!),
            ),
            Row(
              children: [
                PostItemBottom(value: "댓글 ${widget.postInfo["commentCount"]!}"),
                PostItemBottom(value: "|"),
                PostItemBottom(value: "${widget.postInfo["createdAt"]!}분 전"),
                PostItemBottom(value: "|"),
                PostItemBottom(value: "${widget.postInfo["category"]!} "),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PostItemBottom extends StatefulWidget {
  String value;

  PostItemBottom({super.key, required this.value});

  @override
  State<PostItemBottom> createState() => _PostItemBottomState();
}

class _PostItemBottomState extends State<PostItemBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Text(
        widget.value,
        style: const TextStyle(
          color: Color(0xff9A9A9A),
        ),
      ),
    );
  }
}
