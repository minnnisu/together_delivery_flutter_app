import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_page_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_repository.dart';

final commentPageProvider =
    StateNotifierProvider<CommentPageNotifier, CommentPageModel>((ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  final commentRead = ref.read(commentProvider.notifier);

  return CommentPageNotifier(commentRepository, commentRead);
});

class CommentPageNotifier extends StateNotifier<CommentPageModel> {
  final CommentRepository commentRepository;
  final CommentNotifier commentRead;

  CommentPageNotifier(this.commentRepository, this.commentRead)
      : super(const CommentPageModel(
            status: CommentPageStatusType.Loading,
            currentPage: 0,
            bottomMessage: ""));

  Future<void> fetchPage(int postId) async {
    try {
      if (state.status == CommentPageStatusType.NoMore) {
        return;
      }

      state = state.copyWith(status: CommentPageStatusType.Loading);
      final response =
          await commentRepository.getCommentList(state.currentPage + 1, postId);
      final metaData = response.metaData;
      final comments = response.comments;

      commentRead.addNewComment(comments);

      if (metaData.currentPage >= metaData.totalPage) {
        state = state.copyWith(status: CommentPageStatusType.NoMore);
      }
      state = state.copyWith(currentPage: state.currentPage + 1);
    } catch (error) {
      state = state.copyWith(status: CommentPageStatusType.Error);
    }
  }

  Future<void> fetchFirstPage(int postId) async {
    try {
      commentRead.removeAllComment();
      state = state.copyWith(status: CommentPageStatusType.Loading);
      final response =
          await commentRepository.getCommentList(1, postId);
      final metaData = response.metaData;
      final comments = response.comments;

      commentRead.addNewComment(comments);

      if (metaData.currentPage >= metaData.totalPage) {
        state = state.copyWith(status: CommentPageStatusType.NoMore);
      } else {
        state = state.copyWith(status: CommentPageStatusType.Success);
      }
      state = state.copyWith(currentPage: 1);
    } catch (error) {
      state = state.copyWith(status: CommentPageStatusType.Error);
    }
  }
}
