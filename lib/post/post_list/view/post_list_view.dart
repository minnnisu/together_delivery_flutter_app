import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_list.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_list_filter/post_list_filter.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_list_floating_action_button.dart';
import 'package:together_delivery_app/post/post_list/view_model/post_list_filter_view_model.dart';

import '../../../common/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class PostListView extends ConsumerWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var postListFilterState = ref.watch(postListFilterViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("게시물"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PostListFilter(),
          PostList(
            category: postListFilterState
                .filterItems[postListFilterState.selectedItem].categoryCode,
          ),
        ],
      ),
      floatingActionButton: PostListFloatingActionButton(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
