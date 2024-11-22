import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post_list/repository/post_repository.dart';

import '../../post_list/repository/post_repository_Impl.dart';
import '../model/post_detail_response_model.dart';

final postDetailLoadViewModel = AsyncNotifierProvider.family<
    PostDetailLoadViewModel, PostDetailResponseModel, String>(
  PostDetailLoadViewModel.new,
);

class PostDetailLoadViewModel extends FamilyAsyncNotifier<PostDetailResponseModel, String> {
  late final PostRepository postRepository;

  @override
  Future<PostDetailResponseModel> build(String arg) async {
    postRepository = ref.watch(postRepositoryImplProvider);
    return await postRepository.getPostDetail(arg);
  }
}

