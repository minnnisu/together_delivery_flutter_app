
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/util/dataConvertor.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart' as post_detail_response_model;
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_status.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';

class PostDetailHeaderLeft extends ConsumerWidget {
  const PostDetailHeaderLeft({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailResponseModel =
    ref.watch(postDetailProvider)
    as post_detail_response_model.PostDetailResponseModel;

    return Container(
      child: Row(
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
              Text(
                postDetailResponseModel.nickname,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              Text(
                DateConvertor.formatDateTime(postDetailResponseModel.createdAt),
                style: TextStyle(
                  color: Color(0xff9a9a9a),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PostDetailHeaderRight extends ConsumerWidget {
  const PostDetailHeaderRight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
    ref.watch(postDetailProvider)
    as post_detail_response_model.PostDetailResponseModel;
    return postDetailModel.status ? PostActiveStatus() : PostInactiveStatus();
  }
}

class PostDetailHeader extends ConsumerWidget {
  const PostDetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PostDetailHeaderLeft(),
        PostDetailHeaderRight(),
      ],
    );
  }
}