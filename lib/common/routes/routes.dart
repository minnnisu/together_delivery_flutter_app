import 'package:flutter/material.dart';
import 'package:together_delivery_app/auth/view/login/login_view.dart';
import 'package:together_delivery_app/auth/view/signup/signup_view.dart';
import 'package:together_delivery_app/auth/view/signup_success/signup_success_view.dart';
import 'package:together_delivery_app/main/main_view.dart';
import 'package:together_delivery_app/post_detail/view/post_detail_view.dart';
import 'package:together_delivery_app/splash/view/splash_view.dart';

import '../../post_big_image_screen/post_big_image_view.dart';

final routes = {
  '/': (BuildContext content) => SplashView(),
  '/home': (BuildContext content) => MainView(),
  '/signup': (BuildContext content) => SignupView(),
  '/signup_success': (BuildContext content) => SignupSuccessView(),
  '/post-detail': (BuildContext content) => PostDetailView(),
  '/postDetail/image': (BuildContext content) => PostBigImageView(),
  // '/signup': (BuildContext content) => SignupScreen(),
  '/login': (BuildContext content) => LoginView(),
  // '/newPost': (BuildContext context) => PostInputFormScreen(),
  // '/location/set': (BuildContext context) => MeetLocationScreen(),
  // '/chat/room' : (BuildContext context) => ChatRoomScreen(
  //     ModalRoute.of(context)!.settings.arguments as int),
};

// TODO: 상수화 필요

class RoutesName {
  static const String main = '/';

  static const String home = "/home";

  static const String login = '/login';

  static const String signup = '/signup';

  static const String signupSuccess = '/signup_success';

  static const String postDetail = '/post-detail';

  static const String PostBigImage = '/postDetail/image';
}
