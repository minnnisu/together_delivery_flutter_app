import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';
import 'package:together_delivery_app/post_list/view/widget/post_list_error_indicator.dart';
import 'package:together_delivery_app/post_list/view/widget/post_list_item.dart';
import 'package:together_delivery_app/post_list/view/widget/no_post_item_indicator.dart';

import '../view_model/post_list_view_model.dart';

class PostListView extends ConsumerStatefulWidget {
  const PostListView({super.key});

  @override
  ConsumerState<PostListView> createState() => _PostListViewState();
}

class _PostListViewState extends ConsumerState<PostListView> {
  static const _firstPageKey = 1;

  final PagingController<int, Post> _pagingController =
      PagingController(firstPageKey: _firstPageKey);

  @override
  void initState() {
    super.initState();

    final postListViewModel = ref.read(postListViewModelProvider.notifier);

    _pagingController.addPageRequestListener((pageKey) {
      postListViewModel.getPostList(pageKey).then((response) {
        final isLastPage = response.metaData.currentPage >= response.metaData.totalPage;
        if (isLastPage) {
          _pagingController.appendLastPage(response.posts);
        } else {
          _pagingController.appendPage(response.posts, pageKey + 1);
        }
      }).catchError((error) {
        _pagingController.error = error;
      });
    });
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () => Future.sync(() => _pagingController.refresh()),
        child: PagedListView<int, Post>.separated(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Post>(
            noItemsFoundIndicatorBuilder: (context) => NoPostItemIndicator(),
            firstPageErrorIndicatorBuilder: (context) => PostListErrorIndicator(),
            animateTransitions: true,
            itemBuilder: (context, item, index) => PostListItem(post: item),
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
