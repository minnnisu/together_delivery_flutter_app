import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/commet_reply_input_type.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/reply_repository.dart';

import '../model/comment_reply_input_model.dart';
import 'comment_repository.dart';

typedef ValidationResult = ({bool isValid, String? message});

final commentReplyInputProvider = StateNotifierProvider.autoDispose<
    CommentReplyInputNotifier, CommentReplyInputModel>((ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  final replyRepository = ref.watch(replyRepositoryProvider);
  return CommentReplyInputNotifier(commentRepository, replyRepository);
});

class CommentReplyInputNotifier extends StateNotifier<CommentReplyInputModel> {
  final CommentRepository commentRepository;
  final ReplyRepository replyRepository;

  CommentReplyInputNotifier(
    this.commentRepository,
    this.replyRepository,
  ) : super(const CommentReplyInputModel(
          commentReplyInputModel: CommentAppendInput(),
          placeholder: "댓글 입력",
          content: "",
          errorMessage: "",
        ));

  void updateState(CommentReplyInputModelBase commentReplyInputModelBase) {
    state = state.copyWith(commentReplyInputModel: commentReplyInputModelBase);
  }

  bool _validateDescription(String content) {
    if (content.isEmpty) {
      state = state.copyWith(errorMessage: '댓글을 입력해주세요.');
      return false;
    }
    if (content.length < 4 || content.length > 30) {
      state = state.copyWith(errorMessage: '댓글은 2글자 이상 30글자 이하여야 합니다.');
      return false;
    }
    return true;
  }

  bool _validateTargetNickName(String targetNickname) {
    if (targetNickname.isEmpty) {
      state = state.copyWith(errorMessage: '댓글을 입력해주세요.');
      return false;
    }

    return true;
  }

  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  Future<bool> sendToServer() async {
    if (state is CommentAppendInput) {
      return _sendCommentAppendInput();
    }
    if (state is CommentModifyInput) {
      return _sendCommentModifyInput();
    }
    if (state is ReplyAppendInput) {
      return _sendReplyAppendInput();
    }
    if (state is ReplyModifyInput) {
      return _sendReplyModifyInput();
    }

    return false;
  }

  Future<bool> _sendCommentAppendInput() async {
    CommentAppendInput commentAppendInput = state as CommentAppendInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    // 서버에 데이터 보내는 로직 수행

    // 예외 처리
    return false;
  }

  Future<bool> _sendCommentModifyInput() async {
    CommentModifyInput commentModifyInput = state as CommentModifyInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    // 서버에 데이터 보내는 로직 수행

    // 예외 처리
    return false;
  }

  Future<bool> _sendReplyAppendInput() async {
    ReplyAppendInput replyAppendInput = state as ReplyAppendInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    if (!_validateTargetNickName(replyAppendInput.targetNickname)) {
      false;
    }

    // 서버에 데이터 보내는 로직 수행

    // 예외 처리
    return false;
  }

  Future<bool> _sendReplyModifyInput() async {
    ReplyModifyInput replyModifyInput = state as ReplyModifyInput;
    if (!_validateDescription(state.content)) {
      false;
    }

    // 서버에 데이터 보내는 로직 수행

    // 예외 처리
    return false;
  }
}
