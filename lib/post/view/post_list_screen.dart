import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/post/model/postListModel.dart';
import 'package:together_delivery_app/post/model/postSummaryModel.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  static const _pageSize = 10;

  final PagingController<int, PostSummaryModel> _pagingController =
  PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }


  // TODO: Provider로 보내기
  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await RemoteApi.getBeerList(pageKey, _pageSize);
      final metaData = response.metaData;
      final posts = response.posts;

      final isLastPage = metaData.currentPage >= metaData.totalPage;

      if (isLastPage) {
        _pagingController.appendLastPage(posts);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(posts, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }


  @override
  Widget build(BuildContext context) => RefreshIndicator(
    onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
    ),
    child: PagedListView<int, PostSummaryModel>.separated(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<PostSummaryModel>(
        noItemsFoundIndicatorBuilder: (context) => Text("데이터가 없습니다."),
        firstPageErrorIndicatorBuilder: (context) => Text("데이터를 불러오는 중 오류가 발생하였습니다"),
        animateTransitions: true,
        itemBuilder: (context, item, index) => PostListItem(
          post: item,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(),
    ),
  );






  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

class PostListItem extends StatelessWidget {
  const PostListItem({
    required this.post,
    Key? key,
  }) : super(key: key);

  final PostSummaryModel post;

  @override
  Widget build(BuildContext context) {
    return PostItem(post);
  }
}

class PostItem extends StatelessWidget {
  final PostSummaryModel post;

  PostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
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



// ignore: avoid_classes_with_only_static_members
class RemoteApi {
  static Future<PostListModel> getBeerList(
      int page,
      int limit, {
        String? searchTerm,
      }) async {
    final dio = Dio();
    Response response = await dio.get(apiUrls.postGet + '?page=$page&per_page=$limit');
    return PostListModel.fromJson(response.data);
  }
}



