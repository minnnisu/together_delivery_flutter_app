import 'package:flutter/material.dart';
import 'package:together_delivery_app/chat/view/chat_room_screen.dart';
import 'package:together_delivery_app/common/view/main_screen.dart';
import 'package:together_delivery_app/common/view/main_view.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/meet_location_screen.dart';
import 'package:together_delivery_app/post/view/post_big_image_screen/post_big_image_screen.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/post_detail_screen.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/post_input_form_screen.dart';
import 'package:together_delivery_app/user/view/signup_screen.dart';
import 'package:together_delivery_app/user/view/login_screen_dart.dart';

final routes = {
  '/': (BuildContext content) => MainScreen(),
  '/home': (BuildContext content) => MainView(),
  '/postDetail': (BuildContext content) => PostDetailScreen(),
  '/postDetail/image': (BuildContext content) => PostBigImageScreen(),
  '/signup': (BuildContext content) => SignupScreen(),
  '/login': (BuildContext content) => LoginScreen(),
  '/newPost': (BuildContext context) => PostInputFormScreen(),
  '/location/set': (BuildContext context) => MeetLocationScreen(),
  '/chat/room' : (BuildContext context) => ChatRoomScreen(
      ModalRoute.of(context)!.settings.arguments as int),
};