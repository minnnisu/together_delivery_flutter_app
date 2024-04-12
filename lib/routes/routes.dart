import 'package:flutter/material.dart';
import 'package:together_delivery_app/view/main_screen.dart';
import 'package:together_delivery_app/view/post_detail_screen.dart';
import 'package:together_delivery_app/user/view/signup_screen.dart';
import 'package:together_delivery_app/user/view/login_screen_dart.dart';

final routes = {
  '/': (BuildContext content) => MainScreen(),
  '/home': (BuildContext content) => MainScreen(),
  '/postDetail': (BuildContext content) => PostDetailScreen(),
  '/signup': (BuildContext content) => SignupScreen(),
  '/login': (BuildContext content) => LoginScreen(),
};