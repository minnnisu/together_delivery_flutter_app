import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/post_list/model/post_list_filter_state.dart';

import '../../../common/const/restaurantCategory.dart';

final postListFilterViewModelProvider =
    StateNotifierProvider<PostListFilterViewModel, PostListFilterState>((ref) {
  var filterItem = RestaurantCategory.values
      .map(
        (e) => FilterItem(categoryCode: e.name, korean: e.korean),
      )
      .toList();
  filterItem.insert(0, FilterItem(categoryCode: "ALL", korean: "전체"));

  return PostListFilterViewModel(PostListFilterState.init(filterItem, 0));
});

class PostListFilterViewModel extends StateNotifier<PostListFilterState> {
  PostListFilterViewModel(super.state);

  void onChangeFilter(int index) {
    state = state.copyWith(selectedItem: index);
    if (state.isExpanded) {
      state = state.copyWith(isExpanded: false);
    }
  }

  void onToggleFilterExpansion() {
    state = state.copyWith(isExpanded: !state.isExpanded);
  }
}
