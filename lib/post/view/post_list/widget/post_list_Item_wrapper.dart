import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/post/view/post_list/widget/post_item.dart';

class PostListItemWrapper extends StatelessWidget {
  final PostItem postItem;
  final int postId;

  const PostListItemWrapper(
      {super.key, required this.postItem, required this.postId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/postDetail', arguments: postId);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Color(0xffcbcbcb),
            ), // 하단 보더 추가
          ),
        ),
        child: postItem,
      ),
    );
  }
}