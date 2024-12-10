class PostListFilterState {
  List<FilterItem> filterItems;
  int selectedItem;
  bool isExpanded;

  PostListFilterState({
    required this.filterItems,
    required this.selectedItem,
    required this.isExpanded,
  });

  PostListFilterState copyWith({
    List<FilterItem>? filterItems,
    int? selectedItem,
    bool? isExpanded,
  }) =>
      PostListFilterState(
        filterItems: filterItems ?? this.filterItems,
        selectedItem: selectedItem ?? this.selectedItem,
        isExpanded: isExpanded ?? this.isExpanded,
      );

  PostListFilterState.init(this.filterItems, this.selectedItem) : isExpanded = false;
}

class FilterItem {
  String categoryCode;
  String korean;

  FilterItem({
    required this.categoryCode,
    required this.korean,
  });

  FilterItem copyWith({
    String? categoryCode,
    String? korean,
  }) =>
      FilterItem(
        categoryCode: categoryCode ?? this.categoryCode,
        korean: korean ?? this.korean,
      );
}
