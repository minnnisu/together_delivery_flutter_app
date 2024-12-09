import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCreateSectionHeader extends StatelessWidget {
  final String title;

  const PostCreateSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          title,
          style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
