import 'package:flutter/material.dart';

class NoPostItemIndicator extends StatelessWidget {
  const NoPostItemIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "게시물이 없습니다.",
        textAlign: TextAlign.center,
      ),
    );
  }
}
