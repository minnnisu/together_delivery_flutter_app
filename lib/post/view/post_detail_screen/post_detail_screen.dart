import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/comment/post_comment_page.dart';
import 'package:together_delivery_app/post/view/comment_view/widget/common/comment_reply_input.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/post_detail.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_request_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_load_provider.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/separate_line.dart';

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
        title: Text("배달게시물"),
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
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // init이 완료되고 실행
      if (mounted) {
        fetchPage();
      }
    });
    scrollController.addListener(
        _scrollListener); //scroll position 변화를 감지 및 _scrollListener 함수 호출

    super.initState();
  }

  // scroll position 변화를 감지하는 함수
  void _scrollListener() async {
    // scroll position이 최하단에 도달했는지 확인
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      // 최하단에 도달하면 특정 이벤트 실행
      await fetchPage();
    }
  }

  Future<void> fetchPage() async {
    await ref.read(commentPageProvider.notifier).fetchPage(widget.postId);
  }

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
                      SeparateLine(),
                      PostCommentPage(),
                    ],
                  ),
                ),
                CommentReplyInput(
                  postId: widget.postId,
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
