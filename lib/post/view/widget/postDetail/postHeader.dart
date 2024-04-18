import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/post_detail_response_model.dart' as post_detail_response_model;
import 'package:together_delivery_app/post/provider/postDetailNotifier.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postStatus.dart';
import 'package:together_delivery_app/util/dataConvertor.dart';

class PostDetailHeaderLeft extends ConsumerWidget {
  const PostDetailHeaderLeft({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailResponseModel =
    ref.watch(postDetailNotifierProvider)
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
    ref.watch(postDetailNotifierProvider)
    as post_detail_response_model.PostDetailResponseModel;
    return postDetailModel.status ? PostActiveStatus() : PostInactiveStatus();
  }
}

class PostDetailHeader extends ConsumerWidget {
  const PostDetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PostDetailResponseModel = ref.watch(postDetailNotifierProvider) as post_detail_response_model.PostDetailResponseModel;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CarouselSlider.builder(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          itemCount: PostDetailResponseModel.images.length,
          itemBuilder: (context, index, realIndex) {return Image.network("");},
        ),
        PostDetailHeaderLeft(),
        PostDetailHeaderRight(),
      ],
    );
  }
}