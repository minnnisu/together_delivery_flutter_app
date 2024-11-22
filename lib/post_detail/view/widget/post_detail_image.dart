import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/api_url.dart';
import 'package:together_delivery_app/post_detail/model/post_detail_response_model.dart';

class PostDetailImage extends ConsumerWidget {
  final List<PostImage> images;

  const PostDetailImage(this.images, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final imagePadding = 10.0;
    final imageSize = (screenWidth - (imagePadding * 8)) / 4;

    int getImageIndex(PostImage postImage) {
      return images.indexOf(postImage);
    }

    return images.isNotEmpty
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "사진",
                    style: textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Wrap(
                    children: images.map((image) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: imagePadding,
                      bottom: imagePadding,
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        '/postDetail/image',
                        arguments: PostBigImageViewArguments(
                            index: getImageIndex(image), images: images),
                      ),
                      child: SmallImagePreview(
                        url:
                            "${ApiUrl.postDetailPostImage}/${image.imageName}",
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

class PostBigImageViewArguments {
  final int index;
  final List<PostImage> images;

  PostBigImageViewArguments({
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
