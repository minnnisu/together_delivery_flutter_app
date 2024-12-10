import 'package:flutter/cupertino.dart';

import '../../../model/api/post_list_response.dart';


class PostItemContent extends StatelessWidget {
  final Post post;

  const PostItemContent(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Text(post.content!),
    );
  }
}
