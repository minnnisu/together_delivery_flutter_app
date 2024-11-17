import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  final String value;

  const InputLabel(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
