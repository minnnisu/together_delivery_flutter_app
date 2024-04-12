import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

class PostInfo{
  int postId;

  PostInfo(this.postId);
}

final postDetailProvider = FutureProvider.family.autoDispose<PostDetailModel, PostInfo>((ref, postInfo) {
  final postRepository = ref.watch(postRepositoryProvider);
  return postRepository.getPostDetail(postInfo.postId);
});