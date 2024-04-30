import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_common_model.dart';

part 'comment_reply_model.freezed.dart';

@freezed
class CommentReplyModel with _$CommentReplyModel {
  const factory CommentReplyModel({
    required CommentPageStatusType status,
    required MetaData metaData,
    required List<Comment> comments,
  }) = _CommentReplyModel;
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required CommentBody comment,
    required Reply reply,
  }) = _Comment;
}


@freezed
class Reply with _$Reply {
  const factory Reply({
    required CommentPageStatusType status,
    required MetaData metaData,
    required List<ReplyBody> replies,
  }) = _Reply;
}