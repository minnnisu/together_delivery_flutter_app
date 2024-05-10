import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_request_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_load_provider.dart';

class PostDetailScreen extends StatefulWidget {
  PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final postId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("배달 게시물"),
      ),
      body: PostDetailScreenBody(postId),
    );
  }
}

class PostDetailScreenBody extends ConsumerStatefulWidget {
  final int postId;

  const PostDetailScreenBody(this.postId, {super.key});

  @override
  PostDetailScreenBodyState createState() => PostDetailScreenBodyState();
}

class PostDetailScreenBodyState extends ConsumerState<PostDetailScreenBody> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ref
        .watch(postDetailLoadProvider(PostDetailRequest(postId: widget.postId)))
        .when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (data) {
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      PostDetail(),
                    ],
                  ),
                ),
              ],
            );
          },
        );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
