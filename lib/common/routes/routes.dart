import 'package:flutter/material.dart';
import 'package:together_delivery_app/auth/view/login/login_view.dart';
import 'package:together_delivery_app/main/main_view.dart';
import 'package:together_delivery_app/splash/view/splash_view.dart';

final routes = {
  '/': (BuildContext content) => SplashView(),
  '/home': (BuildContext content) => MainView(),
  // '/postDetail': (BuildContext content) => PostDetailScreen(),
  // '/postDetail/image': (BuildContext content) => PostBigImageScreen(),
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

  static const String postDetail = '/postDetail';
}