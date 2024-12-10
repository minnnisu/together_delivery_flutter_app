import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_list_error_indicator.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_item/post_list_item.dart';

import '../../model/api/post_list_response.dart';
import '../../view_model/post_list_view_model.dart';
import 'no_post_item_indicator.dart';

class PostList extends ConsumerStatefulWidget {
  final String category;

  const PostList({super.key, required this.category});

  @override
  ConsumerState<PostList> createState() => _PostListState();
}

class _PostListState extends ConsumerState<PostList> {
  final PagingController<int?, Post> _pagingController =
  PagingController(firstPageKey: null);

  @override
  void initState() {
    super.initState();

    final postListViewModel = ref.read(postListViewModelProvider.notifier);

    _pagingController.addPageRequestListener((cursor) {
      postListViewModel.getPostList(cursor, widget.category).then((response) {
        final isLastPage = response.posts.isEmpty ? true : false;
        if (isLastPage) {
          _pagingController.appendLastPage(response.posts.cast<Post>());
        } else {
          _pagingController.appendPage(
              response.posts.cast<Post>(), response.posts.last.id - 1);
        }
      }).catchError((error) {
        _pagingController.error = error;
      });
    });
  }

  @override
  void didUpdateWidget(PostList oldWidget) {
    super.didUpdateWidget(oldWidget);

    // category가 변경되었을 때만 동작
    if (oldWidget.category != widget.category) {
      _pagingController.refresh();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => Future.sync(() => _pagingController.refresh()),
        child: PagedListView<int?, Post>.separated(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Post>(
            noItemsFoundIndicatorBuilder: (context) => NoPostItemIndicator(),
            firstPageErrorIndicatorBuilder: (context) =>
                PostListErrorIndicator(),
            animateTransitions: true,
            itemBuilder: (context, item, index) => PostListItem(post: item),
          ),
          separatorBuilder: (context, index) => const SizedBox(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
