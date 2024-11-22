import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail_content.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail_extra_info.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail_image.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail_meet_location.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail_restaurantName.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_header.dart';

import '../../model/post_detail_response_model.dart';

class PostDetail extends ConsumerWidget {
  final PostDetailResponseModel postDetailResponseModel;

  const PostDetail(this.postDetailResponseModel, {super.key});

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
          PostDetailHeader(postDetailResponseModel.post),
          PostDetailRestaurantName(postDetailResponseModel.post),
          PostDetailExtraInfo(postDetailResponseModel.post),
          postDetailResponseModel.post.content !=
                  null
              ? PostContent(postDetailResponseModel.post)
              : Container(),
          PostDetailMeetLocation(postDetailResponseModel.post.meetLocation),
          PostDetailImage(postDetailResponseModel.post.images),
        ],
      ),
    );
  }
}
