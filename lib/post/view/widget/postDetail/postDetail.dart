import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postDetailBody.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postHeader.dart';
import 'package:together_delivery_app/widgets/border.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: bottomBorder,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostDetailHeader(),
          PostDetailBody(),
        ],
      ),
    );
  }
}