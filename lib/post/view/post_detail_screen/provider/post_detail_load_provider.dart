import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_request_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

final postDetailLoadProvider = FutureProvider.family.autoDispose<PostDetailResponseModel, PostDetailRequest>((ref, postInfo) async {
  final postRepository = ref.watch(postRepositoryProvider);
  final postDetailWatch = ref.watch(postDetailProvider.notifier);

  final postDetailModel = await postRepository.getPostDetail(postInfo.postId);
  postDetailWatch.updateState(postDetailModel);
  return postDetailModel;
});