import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/meet_location/meet_location_address.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/meet_location/meet_short_address_input_field.dart';

import '../section_header/post_create_section_header.dart';
import 'meet_location_header.dart';

class MeetLocationInfo extends ConsumerWidget {
  final double marginBottomSize;
  final double width;
  final String? errorText;

  const MeetLocationInfo(
      {super.key,
      this.marginBottomSize = 0,
      this.errorText,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostCreateSectionHeader(
          title: "만남 장소",
        ),
        MeetLocationHeader(),
        SizedBox(
          height: 9,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MeetLocationAddress(),
            MeetShortAddressInputField(),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ],
    );
  }
}
