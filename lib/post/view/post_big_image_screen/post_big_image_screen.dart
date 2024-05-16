import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail_image.dart';

class PostBigImageScreen extends StatefulWidget {
  const PostBigImageScreen({super.key});

  @override
  State<PostBigImageScreen> createState() => _PostBigImageScreenState();
}

class _PostBigImageScreenState extends State<PostBigImageScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final PostBigImageScreenArguments arguments = ModalRoute.of(context)!
        .settings
        .arguments as PostBigImageScreenArguments;

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
                imageProvider: NetworkImage("${apiUrls.postDetailPostImage}/${arguments.images[index].imageName}"));
            // return Image.network(
            //   "${apiUrls.postDetailPostImage}/${arguments.images[index].imageName}",
            // );
          },
        ),
      ),
    );
  }
}
