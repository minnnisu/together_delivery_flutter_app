import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/post/post_detail/view/widget/post_detail.dart';
import 'package:together_delivery_app/post/post_detail/view_model/post_detail_view_model.dart';

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

    var postDetailResponseModel =
        ref.watch(postDetailLoadViewModel(postId.toString()));

    return postDetailResponseModel.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text("게시글"),
            centerTitle: true,
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) async {
                  // 선택된 메뉴에 따른 작업
                  if (value == 'delete') {
                    print('delete 선택');
                  } else if (value == 'edit') {
                    print('edit 선택');
                  } else if (value == 'chat') {
                    await ref.read(postDetailViewModelProvider).enterChatRoom(data.chatRoom.id);
                    Navigator.pushNamed(context, RoutesName.chatRoom, arguments: data.post.id);
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      value: 'delete',
                      child: Text('삭제'),
                    ),
                    PopupMenuItem(
                      value: 'edit',
                      child: Text('수정'),
                    ),
                    PopupMenuItem(
                      value: 'chat',
                      child: Text('채팅방 입장'),
                    ),
                  ];
                },
                icon: Icon(Icons.more_vert), // "더보기" 아이콘
              ),
            ],
          ),
          body: Column(
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
          ),
        );
      },
      error: (error, stackTrace) => Text("오류가 발생하였습니다."),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
