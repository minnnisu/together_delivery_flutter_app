import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/meet_location_loader.dart';

class MeetLocationScreen extends StatefulWidget {
  const MeetLocationScreen({super.key});

  @override
  State<MeetLocationScreen> createState() => _MeetLocationScreenState();
}

class _MeetLocationScreenState extends State<MeetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("만남장소 지정"),
      ),
      body: MeetLocationLoader(),
    );
  }
}
