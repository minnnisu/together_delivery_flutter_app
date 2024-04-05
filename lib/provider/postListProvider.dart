// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:together_delivery_app/data_sources/PostDataSource.dart';
// import 'package:together_delivery_app/helper/apiUrls.dart';
// import 'package:together_delivery_app/repository/postRepository.dart';
//
// import '../models/post.dart';
// import '../models/posts.dart';
//
// part 'postListNotifier.g.dart';
//
// @riverpod
// class PostList extends _$PostList{
//   final List<Post> _posts = [];
//   late final PostRepository postRepository;
//
//   @override
//   Future<List<Post>> build() async {
//     postRepository = new PostRepository(new PostDataSource());
//     return await postRepository.fetchPostList();
//   }
//
//   List<Post> get posts => _posts;
// }

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:together_delivery_app/di/di_setup.dart';

import '../models/post.dart';
import '../repository/postRepository.dart';

@Injectable()
class PostListProvider extends StateNotifier<List<Post>> {
  final PostRepository postRepository;

  PostListProvider(this.postRepository) : super([]);

  Future<void> fetchPosts() async {
    final posts = await postRepository.fetchPostList();
    state = posts;
  }
}

final postListProvider = StateNotifierProvider((ref) => PostListProvider(getIt<PostRepository>()));