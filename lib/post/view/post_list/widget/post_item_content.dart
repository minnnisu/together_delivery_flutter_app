import 'package:flutter/cupertino.dart';

import '../model/post_summar_model.dart';

class PostItemContent extends StatelessWidget {
  final PostSummaryModel post;

  const PostItemContent(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(post.content);
  }
}
