import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/const.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart'
    as post_detail_response_model;
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_base.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_me.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header_pop_up/post_header_pop_up_other.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_status.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';

class PostDetailHeader extends ConsumerWidget {
  const PostDetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PostDetailHeaderLeft(),
          PostDetailHeaderRight(),
        ],
      ),
    );
  }
}

class PostDetailHeaderLeft extends ConsumerWidget {
  const PostDetailHeaderLeft({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailResponseModel = ref.watch(postDetailProvider)
        as post_detail_response_model.PostDetailResponseModel;

    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Image.asset(
            "assets/user_avatar.png",
            width: 40,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Text(
                postDetailResponseModel.post.nickname,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            Text(
              DateConvertor.formatDateTime(postDetailResponseModel.post.createdAt),
              style: TextStyle(
                color: Color(0xff9a9a9a),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PostDetailHeaderRight extends ConsumerWidget {
  const PostDetailHeaderRight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel = ref.watch(postDetailProvider)
        as post_detail_response_model.PostDetailResponseModel;

    return Row(
      children: [
        postDetailModel.post.status ? PostActiveStatus() : PostInactiveStatus(),
        postDetailModel.post.isPostCreator ?
        PostHeaderPopUpMe():
        PostHeaderPopUpOther(),
      ],
    );
  }
}
