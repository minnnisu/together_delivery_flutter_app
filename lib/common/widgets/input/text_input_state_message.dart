import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputStateMessage extends StatelessWidget {
  final bool isSuccess;
  final String message;

  const TextInputStateMessage({super.key, required this.isSuccess, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: isSuccess ? Color(0xFF196DE9) : Color(0xFFFF5252),
      ),
    );
  }
}
