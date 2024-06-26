import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_reply_input_model.freezed.dart';

abstract class CommentReplyInputModelBase {}

@freezed
class CommentReplyInputModel with _$CommentReplyInputModel {
  const factory CommentReplyInputModel({
    required CommentReplyInputModelBase commentReplyInputModel,
    required String placeholder,
    required String content,
    required String errorMessage,
  }) = _CommentReplyInputModel;
}

@freezed
class InitStatusInput extends CommentReplyInputModelBase
    with _$InitStatusInput {
  const factory InitStatusInput() = _InitStatusInput;
}


@freezed
class CommentAppendInput extends CommentReplyInputModelBase
    with _$CommentAppendInput {
  const factory CommentAppendInput({
    required int postId,
  }) = _CommentAppendInput;
}

@freezed
class CommentModifyInput extends CommentReplyInputModelBase
    with _$CommentModifyInput {
  const factory CommentModifyInput({
    required int commentIndex,
    required int commentId,
  }) = _CommentModifyInput;
}

@freezed
class ReplyAppendInput extends CommentReplyInputModelBase
    with _$ReplyAppendInput {
  const factory ReplyAppendInput({
    required int commentIndex,
    required String targetNickname,
    required int commentId,
  }) = _ReplyAppendInput;
}

@freezed
class ReplyModifyInput extends CommentReplyInputModelBase
    with _$ReplyModifyInput {
  const factory ReplyModifyInput({
    required int commentIndex,
    required int replyIndex,
    required int replyId,
  }) = _ReplyModifyInput;
}
