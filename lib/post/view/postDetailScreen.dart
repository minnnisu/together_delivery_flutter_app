import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/postDetailRequest.dart';
import 'package:together_delivery_app/post/provider/postDetailProvider.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postComment.dart';
import 'package:together_delivery_app/post/view/widget/postDetail/postDetail.dart';


class PostDetailScreen extends StatefulWidget {
  PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final postId = ModalRoute.of(context)!.settings.arguments as int;
    print(postId);
    return Scaffold(
      appBar: AppBar(
        title: Text("배달게시물"),
      ),
      body: PostDetailScreenBody(postId),
    );
  }
}

class PostDetailScreenBody extends ConsumerWidget {
  final int postId;

  const PostDetailScreenBody(this.postId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(postDetailProvider(PostDetailRequest(postId: postId))).when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (data)
        {
          return Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostDetail(),
                PostCommentAndReply(),
              ],
            ),
          );
        }
    );
  }
}


