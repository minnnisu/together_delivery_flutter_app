import 'package:flutter/material.dart';
import 'package:together_delivery_app/auth/view/login/login_view.dart';
import 'package:together_delivery_app/auth/view/signup/signup_view.dart';
import 'package:together_delivery_app/auth/view/signup_success/signup_success_view.dart';
import 'package:together_delivery_app/chat/view/chat_room_view.dart';
import 'package:together_delivery_app/main/main_view.dart';
import 'package:together_delivery_app/post/new_post_create/view/new_post_create_view.dart';
import 'package:together_delivery_app/splash/view/splash_view.dart';

import '../../post/meet_location_set/view/meet_location_set_view.dart';
import '../../post/post_big_image_screen/post_big_image_view.dart';
import '../../post/post_detail/view/post_detail_view.dart';

final routes = {
  '/': (BuildContext content) => SplashView(),
  '/home': (BuildContext content) => MainView(),
  '/signup': (BuildContext content) => SignupView(),
  '/signup_success': (BuildContext content) => SignupSuccessView(),
  '/post-detail': (BuildContext content) => PostDetailView(),
  '/postDetail/image': (BuildContext content) => PostBigImageView(),
  // '/signup': (BuildContext content) => SignupScreen(),
  '/login': (BuildContext content) => LoginView(),
  '/post/create': (BuildContext context) => NewPostCreateView(),
  '/location/set': (BuildContext context) => MeetLocationSetView(),
  '/chat/room' : (BuildContext context) => ChatRoomView(ModalRoute.of(context)!.settings.arguments as int),
};

// TODO: 상수화 필요ㅌ

class RoutesName {
  static const String main = '/';

  static const String home = "/home";

  static const String login = '/login';

  static const String signup = '/signup';

  static const String signupSuccess = '/signup_success';

  static const String postDetail = '/post-detail';

  static const String PostBigImage = '/postDetail/image';

  static const String newPostCreate = '/post/create';

  static const String meetLocationSet = '/location/set';

  static const String chatRoom = '/chat/room';
}
