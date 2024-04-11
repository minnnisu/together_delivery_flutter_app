// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:injectable/injectable.dart';
// import 'package:together_delivery_app/di/di_setup.dart';
//
// import '../post/model/postModel.dart';
// import '../repository/postRepository.dart';
//
// @Injectable()
// class PostListProvider extends StateNotifier<List<Post>> {
//   final PostRepository postRepository;
//
//   PostListProvider(this.postRepository) : super([]);
//
//   Future<void> fetchPosts() async {
//     final posts = await postRepository.fetchPostList();
//     state = posts;
//   }
// }
//
// final postListProvider = StateNotifierProvider((ref) => PostListProvider(getIt<PostRepository>()));