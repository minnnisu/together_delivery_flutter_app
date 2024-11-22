import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail.dart';

import '../view_model/post_detail_load_view_model.dart';

class PostDetailView extends ConsumerStatefulWidget {
  const PostDetailView({super.key});

  @override
  ConsumerState<PostDetailView> createState() => _PostDetailViewState();
}

class _PostDetailViewState extends ConsumerState<PostDetailView> {
  @override
  Widget build(BuildContext context) {
    final postId = ModalRoute.of(context)!.settings.arguments;

    var watch = ref.watch(postDetailLoadViewModel(postId.toString()));

    return Scaffold(
      appBar: AppBar(
        title: Text("게시글"),
        centerTitle: true,
      ),
      body: watch.when(
        data: (data) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    PostDetail(data),
                  ],
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => Text("오류가 발생하였습니다."),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

