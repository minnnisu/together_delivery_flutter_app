import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:together_delivery_app/post/model/postSummaryModel.dart';
import 'package:together_delivery_app/post/util/postUtil.dart';
import 'package:together_delivery_app/post/view/widget/postList/postLisItem.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  static const _firstPageKey = 1;

  final PagingController<int, PostSummaryModel> _pagingController =
      PagingController(firstPageKey: _firstPageKey);

  Future<void> _fetchPage(int pageKey) async {
    try {
      final PostUtil postUtil = PostUtil();
      final response = await postUtil.getPostList(pageKey);
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
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
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
            firstPageErrorIndicatorBuilder: (context) =>
                Text("데이터를 불러오는 중 오류가 발생하였습니다"),
            animateTransitions: true,
            itemBuilder: (context, item, index) => PostListItem(
              item,
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
