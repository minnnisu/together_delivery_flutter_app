import 'package:together_delivery_app/models/post.dart';

class Posts {
  final int totalPage;
  final int currentPage;
  final List<Post> posts;

  Posts({
    required this.totalPage,
    required this.currentPage,
    required this.posts,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    final List<dynamic> postList = json['posts'];
    final posts = postList.map((postJson) => Post.fromJson(postJson)).toList();
    return Posts(
      totalPage: json['totalPage'] as int,
      currentPage: json['currentPage'] as int,
      posts: posts,
    );
  }
}