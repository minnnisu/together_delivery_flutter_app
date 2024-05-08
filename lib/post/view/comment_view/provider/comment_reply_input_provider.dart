import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_delete_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_save_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_update_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_delete_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_update_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/reply_repository.dart';

import '../model/comment_reply_input_model.dart';
import 'comment_repository.dart';

typedef ValidationResult = ({bool isValid, String? message});

final commentReplyInputProvider = StateNotifierProvider.autoDispose<
    CommentReplyInputNotifier, CommentReplyInputModel>((ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  final replyRepository = ref.watch(replyRepositoryProvider);
  final commentPageRead = ref.watch(commentPageProvider.notifier);
  return CommentReplyInputNotifier(
    commentRepository: commentRepository,
    replyRepository: replyRepository,
    commentPageRead: commentPageRead,
  );
});

class CommentReplyInputNotifier extends StateNotifier<CommentReplyInputModel> {
  final CommentRepository commentRepository;
  final ReplyRepository replyRepository;
  final CommentPageNotifier commentPageRead;

  CommentReplyInputNotifier({
    required this.commentRepository,
    required this.replyRepository,
    required this.commentPageRead,
  }) : super(const CommentReplyInputModel(
          commentReplyInputModel: InitStatusInput(),
          placeholder: "댓글 입력",
          content: "",
          errorMessage: "",
        ));

  void updateCommentReplyInputModelBase(
      CommentReplyInputModelBase commentReplyInputModelBase) {
    state = state.copyWith(commentReplyInputModel: commentReplyInputModelBase);
    if (commentReplyInputModelBase is CommentAppendInput) {
      state = state.copyWith(placeholder: "댓글 입력");
    }

    if (commentReplyInputModelBase is CommentModifyInput) {
      state = state.copyWith(placeholder: "댓글 수정");
    }

    if (commentReplyInputModelBase is ReplyAppendInput) {
      state = state.copyWith(
          placeholder:
              "${(commentReplyInputModelBase).targetNickname}의 댓글에 답글 입력");
    }

    if (commentReplyInputModelBase is ReplyModifyInput) {
      state = state.copyWith(placeholder: "답글 수정");
    }
  }

  bool _validateDescription(String content) {
    if (content.isEmpty) {
      state = state.copyWith(errorMessage: '댓글 혹은 답글을 입력해주세요.');
      return false;
    }
    if (content.length < 4 || content.length > 30) {
      state = state.copyWith(errorMessage: '댓글 혹은 답글을 2글자 이상 30글자 이하여야 합니다.');
      return false;
    }
    return true;
  }

  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  Future<bool> sendToServer() async {
    if (state.commentReplyInputModel is CommentAppendInput) {
      return _sendCommentAppendInput();
    }
    if (state.commentReplyInputModel is CommentModifyInput) {
      return _sendCommentModifyInput();
    }
    if (state.commentReplyInputModel is ReplyAppendInput) {
      return _sendReplyAppendInput();
    }
    if (state.commentReplyInputModel is ReplyModifyInput) {
      return _sendReplyModifyInput();
    }

    return false;
  }

  Future<bool> _sendCommentAppendInput() async {
    CommentAppendInput commentAppendInput =
        state.commentReplyInputModel as CommentAppendInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    try {
      await commentRepository.saveComment(CommentSaveRequestModel(
          postId: commentAppendInput.postId, content: state.content));

      await commentPageRead.addNewComment(commentAppendInput.postId);
    } on CustomException catch (e) {
      return false;
    }

    return true;
  }

  Future<bool> _sendCommentModifyInput() async {
    CommentModifyInput commentModifyInput =
        state.commentReplyInputModel as CommentModifyInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    try {
      final response = await commentRepository.updateComment(
          CommentUpdateRequestModel(
              commentId: commentModifyInput.commentId, content: state.content));
      commentPageRead.updateComment(response, commentModifyInput.commentIndex);

      return true;
    } on CustomException catch (e) {
      return false;
    }
  }

  Future<bool> _sendReplyAppendInput() async {
    ReplyAppendInput replyAppendInput =
        state.commentReplyInputModel as ReplyAppendInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    try {
      await replyRepository.saveReply(ReplySaveRequestModel(
        content: state.content,
        commentId: replyAppendInput.commentId,
      ));
      await commentPageRead.addNewReply(
          replyAppendInput.commentId, replyAppendInput.commentIndex);

      return true;
    } on CustomException catch (e) {
      return false;
    }
  }

  Future<bool> _sendReplyModifyInput() async {
    ReplyModifyInput replyModifyInput =
        state.commentReplyInputModel as ReplyModifyInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    try {
      final response =
          await replyRepository.updateReply(ReplyUpdateRequestModel(
        content: state.content,
        replyId: replyModifyInput.replyId,
      ));

      commentPageRead.updateReply(
        replyModifyInput.commentIndex,
        replyModifyInput.replyIndex,
        replyModifyInput.replyId,
        response,
      );

      return true;
    } on CustomException catch (e) {
      return false;
    }
  }

  Future<void> deleteComment(int commentId, int commentIndex) async {
    CommentDeleteResponseModel responseModel =
        await commentRepository.deleteComment(commentId);
    commentPageRead.deleteComment(responseModel, commentId, commentIndex);
  }

  Future<void> deleteReply(
      int replyId, int commentIndex, int replyIndex) async {
    ReplyDeleteResponseModel responseModel =
        await replyRepository.deleteReply(replyId);
    commentPageRead.deleteReply(responseModel, commentIndex,  replyId, replyIndex);
  }
}
