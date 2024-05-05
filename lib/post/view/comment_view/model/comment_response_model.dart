import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:together_delivery_app/post/view/comment_view/model/comment_common_model.dart';


part 'comment_response_model.freezed.dart';
part 'comment_response_model.g.dart';

CommentResponseModel commentResponseModelFromJson(String str) => CommentResponseModel.fromJson(json.decode(str));

String commentResponseModelToJson(CommentResponseModel data) => json.encode(data.toJson());

@freezed
class CommentResponseModel with _$CommentResponseModel {
  const factory CommentResponseModel({
    required List<Comment> comments,
  }) = _CommentResponseModel;

  factory CommentResponseModel.fromJson(Map<String, dynamic> json) => _$CommentResponseModelFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required CommentBody comment,
    required Reply reply,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}


@freezed
class Reply with _$Reply {
  const factory Reply({
    required List<ReplyBody> replies,
  }) = _Reply;

  factory Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);
}