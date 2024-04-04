import 'package:flutter/material.dart';
import 'package:together_delivery_app/helper/postService.dart';
import 'package:together_delivery_app/widgets/loadingWidget.dart';

import '../models/post.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  bool loading = true;
  late List<Post> postList;

  void getPost() async {
    List<Post> _postList = (await PostService().getPostList()).cast<Post>();
    setState(() {
      postList = _postList;
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const LoadingWidget()
        : Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: Color(0xffcbcbcb),
                ),
              ),
            ),
            child: ListView.builder(
              itemCount: postList.length,
              itemBuilder: (context, index) => PostItem(post: postList[index]),
            ));
  }
}

class PostItem extends StatefulWidget {
  Post post;

  PostItem({super.key, required this.post});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/postDetail', arguments: widget.post.id);
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
              widget.post.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(widget.post.content),
            ),
            Row(
              children: [
                PostItemBottom(value: "댓글 0"),
                PostItemBottom(value: "|"),
                PostItemBottom(value: widget.post.createdAt),
                PostItemBottom(value: "|"),
                PostItemBottom(value: widget.post.categoryCode),
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
