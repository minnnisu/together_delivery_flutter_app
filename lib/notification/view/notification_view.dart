import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알림"),
        centerTitle: true,
      ),
      body: Container(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
