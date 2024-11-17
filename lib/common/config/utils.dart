import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  // generic toast message imported from toast package
  // we will utilise this for showing errors or success messages
  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
    backgroundColor: Colors.black,
      textColor: Colors.white,
    );
  }

  // we will utilise this for showing errors or success messages
  static snackBar(String message, BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message ))
    );
  }
}