import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/restaurant_info/restaurant_info.dart';

import '../extra_info/post_create_extra_info.dart';
import '../meet_location/meet_location_info.dart';

class PostCreateForm extends StatelessWidget {
  const PostCreateForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RestaurantInfo(),
          MeetLocationInfo(),
          PostCreateExtraInfo()
        ],
      ),
    );
  }
}
