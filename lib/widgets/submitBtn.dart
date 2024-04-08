import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  final String btnName;
  final Function() onPressed;

  const SubmitBtn({super.key, required this.btnName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xffA091DE)),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 16),
          ),
          shadowColor: MaterialStateProperty.all(const Color(0xffffffff)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          )),
      onPressed: onPressed,
      child: Text(
        btnName,
        style: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
