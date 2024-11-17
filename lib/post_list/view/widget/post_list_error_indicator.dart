import 'package:flutter/material.dart';

class PostListErrorIndicator extends StatelessWidget {
  const PostListErrorIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "게시물을 불러올 수 없습니다.",
        textAlign: TextAlign.center,
      ),
    );
  }
}
