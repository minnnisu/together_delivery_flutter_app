import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:together_delivery_app/common/config/api_url.dart';

import '../post_detail/view/widget/post_detail_image.dart';

class PostBigImageView extends StatefulWidget {
  const PostBigImageView({super.key});

  @override
  State<PostBigImageView> createState() => _PostBigImageViewState();
}

class _PostBigImageViewState extends State<PostBigImageView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final PostBigImageViewArguments arguments = ModalRoute.of(context)!
        .settings
        .arguments as PostBigImageViewArguments;

    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        actions: [
          IconButton(
              onPressed: () => Navigator.pop(context), icon: Icon(Icons.close),color: Color(0xffffffff),)
        ],
      ),
      body: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 1000,
            viewportFraction: 1.0,
            initialPage: arguments.index,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: arguments.images.length,
          itemBuilder: (context, index, realIndex) {
            return PhotoView(
                imageProvider: NetworkImage("${ApiUrl.postDetailPostImage}/${arguments.images[index].imageName}"));
            // return Image.network(
            //   "${apiUrls.postDetailPostImage}/${arguments.images[index].imageName}",
            // );
          },
        ),
      ),
    );
  }
}
