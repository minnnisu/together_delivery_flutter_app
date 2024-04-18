import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/model/postDetailRequest.dart';
import 'package:together_delivery_app/post/provider/postDetailNotifier.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';

final postDetailProvider = FutureProvider.family.autoDispose<PostDetailResponseModel, PostDetailRequest>((ref, postInfo) async {
  final postRepository = ref.watch(postRepositoryProvider);
  final postDetailWatch = ref.watch(postDetailNotifierProvider.notifier);

  final postDetailModel = await postRepository.getPostDetail(postInfo.postId);
  postDetailWatch.updateState(postDetailModel);
  return postDetailModel;
});