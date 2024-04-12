import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/post/model/postDetailRequest.dart';
import 'package:together_delivery_app/post/provider/postDetailProvider.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

// class PostInfo{
//   int postId;
//
//   PostInfo(this.postId);
// }

final postDetailNotifierProvider = StateNotifierProvider.autoDispose
    .family<PostDetailNotifier, PostDetailModelBase, PostDetailRequest>(
        (ref, postDetailRequest) {
  final postRepository = ref.watch(postRepositoryProvider);

  return PostDetailNotifier(
      postRepository: postRepository, postId: postDetailRequest.postId);
});

class PostDetailNotifier extends StateNotifier<PostDetailModelBase> {
  final PostRepository postRepository;
  final int postId;

  PostDetailNotifier({required this.postRepository, required this.postId})
      : super(PostDetailModelLoading()) {
    fetchPostDetail(postId);
  }

  Future<void> fetchPostDetail(postId) async {
    try {
      state = PostDetailModelLoading();
      state = await postRepository.getPostDetail(postId);
    } catch (e) {
      state = PostDetailModelError(message: e.toString());
    }
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
