import 'dart:convert';

PostListState postListStateFromJson(String str) => PostListState.fromJson(json.decode(str));

String postListStateToJson(PostListState data) => json.encode(data.toJson());

class PostListState {
  int page;

  PostListState({
    required this.page,
  });

  PostListState copyWith({
    int? page,
  }) =>
      PostListState(
        page: page ?? this.page,
      );

  factory PostListState.fromJson(Map<String, dynamic> json) => PostListState(
    page: json["page"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
  };

  PostListState.init() : page = 1;
}