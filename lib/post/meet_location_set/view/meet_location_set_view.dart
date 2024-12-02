import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/meet_location_loader.dart';

class MeetLocationSetView extends StatelessWidget {
  const MeetLocationSetView({super.key});

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
