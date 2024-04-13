import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/post/provider/postDetailNotifier.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postStatus.dart';
import 'package:together_delivery_app/util/dataConvertor.dart';

class PostDetailHeaderLeft extends ConsumerWidget {
  const PostDetailHeaderLeft({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
    ref.watch(postDetailNotifierProvider)
    as PostDetailModel;

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
                postDetailModel.nickname,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              Text(
                DateConvertor.formatDateTime(postDetailModel.createdAt),
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
    ref.watch(postDetailNotifierProvider)
    as PostDetailModel;
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