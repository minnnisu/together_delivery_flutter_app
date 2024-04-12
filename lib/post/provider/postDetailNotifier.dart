import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/post/provider/postDetailProvider.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

// class PostInfo{
//   int postId;
//
//   PostInfo(this.postId);
// }


final postDetailNotifierProvider =
    StateNotifierProvider<PostDetailNotifier, PostDetailModelBase>((ref) {
  final postRepository = ref.watch(postRepositoryProvider);

  return PostDetailNotifier(postRepository);
});

class PostDetailNotifier extends StateNotifier<PostDetailModelBase> {
  final PostRepository postRepository;

  PostDetailNotifier(this.postRepository) : super(PostDetailModelLoading()) {
    fetchPostDetail(1);
  }

  Future<void> fetchPostDetail(postId) async {
    try {
      state = await postRepository.getPostDetail(postId);
    } catch (e) {
      state = PostDetailModelError(message: e.toString());
    }
  }

  void setState(PostDetailModelBase post) {
    state = post;
  }
}

// final postDetailNotifierProvider =
//     StateNotifierProvider.family<PostDetailNotifier, PostDetailModel, PostInfo>((ref, postInfo) {
//   return PostDetailNotifier(ref:ref,postId:postInfo.postId);
// });
//
//
// class PostDetailNotifier extends StateNotifier<AsyncValue<PostDetailModel>> {
//   final Ref ref;
//   final int postId;
//
//   PostDetailNotifier({required this.ref, required this.postId}) : super(const AsyncValue.loading()) {
//     _fetchData();
//   }
//
//   Future<void> _fetchData() async {
//     state = const AsyncValue.loading();
//     // todoListProvider is of type FutureProvider
//     ref.read(postDetailProvider(PostInfo(postId))).when(data: (data) {
//       state = AsyncValue.data(data);
//     }, error: (err, stackTrace) {
//       state = AsyncValue.error(err, stackTrace);
//     }, loading: () {
//       state = const AsyncValue.loading();
//     });
//   }
// }
