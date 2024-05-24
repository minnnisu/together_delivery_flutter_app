import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart'
    as pdrm;
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';

import '../provider/post_detail_provider.dart';

class PostDetailImage extends ConsumerWidget {
  const PostDetailImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imagePadding = 10.0;
    final imageSize = (screenWidth - (imagePadding * 8)) / 4;
    final postDetailResponseModel =
        ref.watch(postDetailProvider) as pdrm.PostDetailResponseModel;

    int getImageIndex(pdrm.PostImage postImage) {
      return postDetailResponseModel.post.images.indexOf(postImage);
    }

    return postDetailResponseModel.post.images.isNotEmpty
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
                    children: postDetailResponseModel.post.images.map((image) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: imagePadding,
                      bottom: imagePadding,
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        '/postDetail/image',
                        arguments: PostBigImageScreenArguments(
                            index: getImageIndex(image),
                            images: postDetailResponseModel.post.images),
                      ),
                      child: SmallImagePreview(
                        url:
                            "${apiUrls.postDetailPostImage}/${image.imageName}",
                        width: imageSize,
                      ),
                    ),
                  );
                }).toList()),
              ],
            ),
          )
        : Container();
  }
}

class PostBigImageScreenArguments {
  final int index;
  final List<PostImage> images;

  PostBigImageScreenArguments({
    required this.index,
    required this.images,
  });
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
