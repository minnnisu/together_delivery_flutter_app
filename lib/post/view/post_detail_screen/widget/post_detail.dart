import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_content.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_extra_info.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_image.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_meet_location.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_restaurantName.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header.dart';

class PostDetail extends ConsumerWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        left: 20,
        right: 20,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          PostDetailHeader(),
          PostDetailRestaurantName(),
          PostDetailExtraInfo(),
          (ref.watch(postDetailProvider) as PostDetailResponseModel).post.content !=
                  null
              ? PostContent()
              : Container(),
          PostDetailMeetLocation(),
          PostDetailImage(),
        ],
      ),
    );
  }
}
