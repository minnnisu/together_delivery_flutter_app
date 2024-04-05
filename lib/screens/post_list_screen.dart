import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/models/post.dart';
import 'package:together_delivery_app/provider/postListProvider.dart';

class PostListScreen extends ConsumerWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(postListProvider.notifier).fetchPosts();

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.5,
            color: Color(0xffcbcbcb),
          ),
        ),
      ),
      child: ListView.builder(
        itemCount: ref.watch(postListProvider.notifier).state.length,
        itemBuilder: (context, index) =>
            PostItem(post: ref.watch(postListProvider.notifier).state[index]),
      ),
    );
  }
}

class PostItem extends ConsumerWidget {
  var post;

  PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/postDetail', arguments: post.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Color(0xffcbcbcb),
            ), // 하단 보더 추가
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(post.content),
            ),
            Row(
              children: [
                PostItemBottom(value: "댓글 0"),
                PostItemBottom(value: "|"),
                PostItemBottom(value: post.createdAt),
                PostItemBottom(value: "|"),
                PostItemBottom(value: post.categoryCode),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PostItemBottom extends StatefulWidget {
  String value;

  PostItemBottom({super.key, required this.value});

  @override
  State<PostItemBottom> createState() => _PostItemBottomState();
}

class _PostItemBottomState extends State<PostItemBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Text(
        widget.value,
        style: const TextStyle(
          color: Color(0xff9A9A9A),
        ),
      ),
    );
  }
}
