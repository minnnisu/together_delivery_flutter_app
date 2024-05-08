import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_common_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_delete_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_update_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_delete_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_update_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_repository.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/reply_repository.dart';

final commentPageProvider =
    StateNotifierProvider.autoDispose<CommentPageNotifier, CommentReplyModel>(
        (ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  final replyRepository = ref.watch(replyRepositoryProvider);

  return CommentPageNotifier(
    commentRepository: commentRepository,
    replyRepository: replyRepository,
  );
});

class CommentPageNotifier extends StateNotifier<CommentReplyModel> {
  final CommentRepository commentRepository;
  final ReplyRepository replyRepository;

  CommentPageNotifier(
      {required this.commentRepository, required this.replyRepository})
      : super(const CommentReplyModel(
          status: CommentPageStatusType.Success,
          comments: [],
        ));

  Future<void> _fetchComment(int postId) async {
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
            status: comment.reply.replies.length < 5
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

  Future<void> _fetchReply(int commentId, int commentIndex) async {
    if (state.comments[commentIndex].reply.status ==
        CommentPageStatusType.Loading) {
      return;
    }

    try {
      List<Comment> comments = List.from(state.comments);
      comments[commentIndex] = Comment(
        comment: comments[commentIndex].comment,
        reply: Reply(
          status: CommentPageStatusType.Loading,
          replies: comments[commentIndex].reply.replies,
        ),
      );

      state = state.copyWith(comments: comments);

      int? cursor = state.comments[commentIndex].reply.replies.isNotEmpty
          ? state.comments[commentIndex].reply.replies.last.replyId
          : null;

      final response = await replyRepository.fetchReply(cursor, commentId);

      comments[commentIndex] = Comment(
        comment: comments[commentIndex].comment,
        reply: Reply(
          status: response.replies.length < 5
              ? CommentPageStatusType.NoMore
              : CommentPageStatusType.Success,
          replies: [
            ...comments[commentIndex].reply.replies,
            ...response.replies
          ],
        ),
      );

      state = state.copyWith(comments: comments);
    } catch (error) {
      List<Comment> comments = List.from(state.comments);
      comments[commentIndex] = Comment(
        comment: comments[commentIndex].comment,
        reply: Reply(
          status: CommentPageStatusType.Error,
          replies: comments[commentIndex].reply.replies,
        ),
      );

      state = state.copyWith(comments: comments);
    }
  }

  Future<void> fetchComment(int postId) async {
    if (state.status == CommentPageStatusType.NoMore) {
      return;
    }

    await _fetchComment(postId);
  }

  Future<void> fetchReply(int commentId, int commentIndex) async {
    if (state.comments[commentIndex].reply.status == CommentPageStatusType.NoMore) {
      return;
    }

    await _fetchReply(commentId, commentIndex);
  }

  Future<void> addNewComment(int postId) async {
    await _fetchComment(postId);
  }

  void updateComment(
      CommentUpdateResponseModel responseModel, int commentIndex) {
    var element = state.comments[commentIndex];
    CommentBody comment = element.comment;
    comment = comment.copyWith(
      content: responseModel.content,
      updatedAt: responseModel.updatedAt,
    );

    List<Comment> comments = List.from(state.comments);
    comments[commentIndex] = comments[commentIndex].copyWith(comment: comment);

    state = state.copyWith(comments: comments);
  }

  Future<void> addNewReply(int commentId, int commentIndex) async {
    await _fetchReply(commentId, commentIndex);
  }

  void updateReply(int commentIndex, int replyIndex, int replyId,
      ReplyUpdateResponseModel response) {
    final updatedReply =
        state.comments[commentIndex].reply.replies[replyIndex].copyWith(
      content: response.content,
      updatedAt: response.updatedAt,
    );

    List<ReplyBody> replies =
        List.of(state.comments[commentIndex].reply.replies);
    replies[replyIndex] = updatedReply;

    List<Comment> comments = List.from(state.comments);
    comments[commentIndex] = Comment(
      comment: comments[commentIndex].comment,
      reply: Reply(status: CommentPageStatusType.Success, replies: replies),
    );

    state = state.copyWith(comments: comments);
  }

  void deleteComment(CommentDeleteResponseModel responseModel, int commentId, int commentIndex) {
    var element = state.comments[commentIndex];
    CommentBody comment = element.comment;
    comment = comment.copyWith(
      content: "삭제된 댓글입니다.",
      deletedAt: responseModel.deletedAt
    );

    List<Comment> comments = List.from(state.comments);
    comments[commentIndex] = comments[commentIndex].copyWith(comment: comment);

    state = state.copyWith(comments: comments);
  }

  void deleteReply(ReplyDeleteResponseModel responseModel, int commentIndex, int replyId, int replyIndex) {
    final updatedReply =
    state.comments[commentIndex].reply.replies[replyIndex].copyWith(
      content: "삭제된 답글입니다.",
      updatedAt: responseModel.deletedAt,
    );

    List<ReplyBody> replies =
    List.of(state.comments[commentIndex].reply.replies);
    replies[replyIndex] = updatedReply;

    List<Comment> comments = List.from(state.comments);
    comments[commentIndex] = Comment(
      comment: comments[commentIndex].comment,
      reply: Reply(status: CommentPageStatusType.Success, replies: replies),
    );

    state = state.copyWith(comments: comments);
  }
}
