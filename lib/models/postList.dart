import 'package:together_delivery_app/models/post.dart';

class PostList {
  final int totalPage;
  final int currentPage;
  final List<Post> posts;

  PostList({
    required this.totalPage,
    required this.currentPage,
    required this.posts,
  });

  factory PostList.fromJson(Map<String, dynamic> json) {
    final List<dynamic> postList = json['posts'];
    final posts = postList.map((postJson) => Post.fromJson(postJson)).toList();
    return PostList(
      totalPage: json['totalPage'] as int,
      currentPage: json['currentPage'] as int,
      posts: posts,
    );
  }
}