import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_common_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_save_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_update_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_repository.dart';

final commentPageProvider =
    StateNotifierProvider.autoDispose<CommentPageNotifier, CommentReplyModel>(
        (ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  return CommentPageNotifier(commentRepository);
});

class CommentPageNotifier extends StateNotifier<CommentReplyModel> {
  final CommentRepository commentRepository;

  CommentPageNotifier(this.commentRepository)
      : super(const CommentReplyModel(
          status: CommentPageStatusType.Success,
          comments: [],
        ));

  Future<void> fetchPage(int postId) async {
    if (state.status == CommentPageStatusType.NoMore) {
      return;
    }

    await _fetchPage(postId);
  }

  Future<void> addNewComment(int postId) async {
    await _fetchPage(postId);
  }

  Future<void> _fetchPage(int postId) async {
    try {
      if (state.status == CommentPageStatusType.Loading) return;

      state = state.copyWith(status: CommentPageStatusType.Loading);
      int? cursor = state.comments.isNotEmpty
          ? state.comments.last.comment.commentId
          : null;

      final commentResponse =
          await commentRepository.getCommentList(cursor, postId);
      final responseComments = commentResponse.comments;

      List<Comment> comments = responseComments.map((comment) {
        return Comment(
          comment: comment.comment,
          reply: Reply(
            replies: comment.reply.replies,
            status: comment.reply.replies.isEmpty
                ? CommentPageStatusType.NoMore
                : CommentPageStatusType.Success,
          ),
        );
      }).toList();

      state = state.copyWith(
        comments: [...state.comments, ...comments],
        status: comments.isEmpty
            ? CommentPageStatusType.NoMore
            : CommentPageStatusType.Success,
      );
    } catch (error) {
      state = state.copyWith(
        status: CommentPageStatusType.Error,
      );
    }
  }

  void updateComment(CommentUpdateResponseModel responseModel) {
    List<Comment> comments = List.from(state.comments);

    for (int index = 0; index < comments.length; index++) {
      var element = state.comments[index];
      CommentBody comment = element.comment;
      if (comment.commentId == responseModel.commentId) {
        comment = comment.copyWith(
          content: responseModel.content,
          updatedAt: responseModel.updatedAt,
        );

        comments[index] = comments[index].copyWith(comment: comment);
      }
    }
    state = state.copyWith(comments: comments);
  }
}
