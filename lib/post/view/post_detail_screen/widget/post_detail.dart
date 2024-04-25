import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart'
    as pdrm;
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_body.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_header.dart';
import 'package:together_delivery_app/widgets/border.dart';

class PostDetail extends ConsumerWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PostDetailResponseModel =
        ref.watch(postDetailProvider) as pdrm.PostDetailResponseModel;

    return Container(
      width: double.infinity,
      decoration: bottomBorder,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          PostDetailHeader(),
          Flexible(child: PostDetailBody()),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 400,
              // aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              // enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: PostDetailResponseModel.images.length,
            itemBuilder: (context, index, realIndex) {
              return Image.network(
                "${apiUrls.postDetailPostImage}/${PostDetailResponseModel.images[index].imageName}",
              );
            },
          ),
        ],
      ),
    );
  }
}
