import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/view/main_screen.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/meet_location_screen.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/post_detail_screen.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/post_input_form_screen.dart';
import 'package:together_delivery_app/user/view/signup_screen.dart';
import 'package:together_delivery_app/user/view/login_screen_dart.dart';

final routes = {
  '/': (BuildContext content) => MainScreen(),
  '/home': (BuildContext content) => MainScreen(),
  '/postDetail': (BuildContext content) => PostDetailScreen(),
  '/signup': (BuildContext content) => SignupScreen(),
  '/login': (BuildContext content) => LoginScreen(),
  '/newPost': (BuildContext context) => PostInputFormScreen(),
  '/location/set': (BuildContext context) => MeetLocationScreen(),
};