import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/repository/post_repository_Impl.dart';

import '../../repository/post_repository.dart';

final postDetailViewModelProvider = Provider<PostDetailViewModel>(
  (ref) {
    final postRepository = ref.watch(postRepositoryImplProvider);
    return PostDetailViewModel(postRepository);
  },
);

class PostDetailViewModel {
  final PostRepository postRepository;

  PostDetailViewModel(this.postRepository);

  Future<void> enterChatRoom(int chatRoomId) async {
    var postAccessValidCheck = await _checkPostAccessValid(chatRoomId);
    if (!postAccessValidCheck) {
      await _enterChatRoom(chatRoomId);
    }
  }

  Future<bool> _checkPostAccessValid(int chatRoomId) async {
    var chatRoomAccessResponseModel =
        await postRepository.checkChatRoomAccessValid(chatRoomId.toString());
    return chatRoomAccessResponseModel.isValid;
  }

  Future<void> _enterChatRoom(chatRoomId) async {
    await postRepository.enterChatRoom(chatRoomId.toString());
  }

  Future<bool> togglePostStatus(String postId) async{
    var postStatusToggleResponseModel = await postRepository.togglePostStatus(postId);
    return postStatusToggleResponseModel.status;
  }
}
