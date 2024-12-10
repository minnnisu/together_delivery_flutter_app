class PostListRestaurantCategoryModel {
  String categoryCode;
  String korean;

  PostListRestaurantCategoryModel({
    required this.categoryCode,
    required this.korean,
  });

  PostListRestaurantCategoryModel copyWith({
    String? categoryCode,
    String? korean,
  }) =>
      PostListRestaurantCategoryModel(
        categoryCode: categoryCode ?? this.categoryCode,
        korean: korean ?? this.korean,
      );
}
