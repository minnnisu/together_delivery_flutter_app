import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart'
    as pdrm;

import '../provider/post_detail_provider.dart';

class PostDetailImage extends ConsumerWidget {
  const PostDetailImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imagePadding = 10.0;
    final imageSize = (screenWidth - (imagePadding * 8)) / 4;

    final PostDetailResponseModel =
        ref.watch(postDetailProvider) as pdrm.PostDetailResponseModel;

    return PostDetailResponseModel.images.isNotEmpty
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "사진",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Wrap(
                    children: PostDetailResponseModel.images.map((image) {
                  return Padding(
                    padding: EdgeInsets.only(right: imagePadding, bottom: imagePadding,),
                    child: SmallImagePreview(
                      url: "${apiUrls.postDetailPostImage}/${image.imageName}",
                      width: imageSize,
                    ),
                  );
                }).toList()),
                // CarouselSlider.builder(
                //   options: CarouselOptions(
                //     height: 400,
                //     viewportFraction: 1,
                //     initialPage: 0,
                //     enableInfiniteScroll: false,
                //     scrollDirection: Axis.horizontal,
                //   ),
                //   itemCount: PostDetailResponseModel.images.length,
                //   itemBuilder: (context, index, realIndex) {
                //     return Container(
                //       child: Image.network(
                //         width: screenWidth,
                //         fit:  BoxFit.cover,
                //         "${apiUrls.postDetailPostImage}/${PostDetailResponseModel.images[index].imageName}",
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          )
        : Container();
  }
}

class SmallImagePreview extends ConsumerWidget {
  final double width;
  final String url;

  const SmallImagePreview({required this.width, required this.url, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.network(
      width: width,
      height: width,
      fit: BoxFit.cover,
      url,
    );
  }
}
