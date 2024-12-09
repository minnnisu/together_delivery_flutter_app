import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("채팅"), centerTitle: true,),
      body: Container(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
