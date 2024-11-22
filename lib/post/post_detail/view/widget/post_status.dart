import 'package:flutter/cupertino.dart';

class PostActiveStatus extends StatelessWidget {
  const PostActiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff80cd53), // 테두리 색상
          width: 1.0, // 테두리 두께
        ),
        borderRadius: BorderRadius.circular(10.0), // 테두리 둥글게 만들기
      ),
      child: Text(
        "모집중",
        style: TextStyle(color: Color(0xff80cd53), fontWeight: FontWeight.w600),
      ),
    );
  }
}

class PostInactiveStatus extends StatelessWidget {
  const PostInactiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff9a9a9a), // 테두리 색상
          width: 1.0, // 테두리 두께
        ),
        borderRadius: BorderRadius.circular(10.0), // 테두리 둥글게 만들기
      ),
      child: Text(
        "모집마감",
        style: TextStyle(color: Color(0xff9a9a9a), fontWeight: FontWeight.w600),
      ),
    );
  }
}