import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

final postDetailNotifierProvider =
    StateNotifierProvider.autoDispose<PostDetailNotifier, PostDetailResponseModelBase>(
        (ref) {
  final postRepository = ref.watch(postRepositoryProvider);

  return PostDetailNotifier(postRepository: postRepository);
});

class PostDetailNotifier extends StateNotifier<PostDetailResponseModelBase> {
  final PostRepository postRepository;

  PostDetailNotifier({required this.postRepository})
      : super(PostDetailResponseModelLoading());

  Future<void> fetchPostDetail(postId) async {
    try {
      state = PostDetailResponseModelLoading();
      state = await postRepository.getPostDetail(postId);
    } catch (e) {
      state = PostDetailResponseModelError(message: e.toString());
    }
  }

  void updateState(PostDetailResponseModelBase postDetailModelBase){
    state = postDetailModelBase;
  }
}