import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';
import 'package:together_delivery_app/post_list/model/state/post_list_state.dart';
import 'package:together_delivery_app/post_list/repository/post_repository.dart';
import 'package:together_delivery_app/post_list/repository/post_repository_Impl.dart';

final postListViewModelProvider =
StateNotifierProvider<PostListViewModel, PostListState>((ref) {
  final postListRepository = ref.watch(postRepositoryImplProvider);
  return PostListViewModel(PostListState.init(), postListRepository);
});

class PostListViewModel extends StateNotifier<PostListState> {
  final PostRepository postListRepository;

  PostListViewModel(super.state, this.postListRepository);

  Future<PostListResponse> getPostList(int page) async{
    return await postListRepository.getPostList(page.toString());
  }
}