import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/post_repository.dart';
import '../../repository/post_repository_Impl.dart';
import '../model/api/post_list_response.dart';
import '../model/state/post_list_state.dart';

final postListViewModelProvider =
StateNotifierProvider<PostListViewModel, PostListState>((ref) {
  final postListRepository = ref.watch(postRepositoryImplProvider);
  return PostListViewModel(PostListState.init(), postListRepository);
});

class PostListViewModel extends StateNotifier<PostListState> {
  final PostRepository postListRepository;

  PostListViewModel(super.state, this.postListRepository);

  Future<PostListResponse> getPostList(int? cursor, String category) async{
    return await postListRepository.getPostList(cursor, category);
  }
}