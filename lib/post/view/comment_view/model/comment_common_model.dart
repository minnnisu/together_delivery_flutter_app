import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_common_model.freezed.dart';
part 'comment_common_model.g.dart';

@freezed
class CommentBody with _$CommentBody {
  const factory CommentBody({
    required int commentId,
    int? postId,
    required String creator,
    required String content,
    required String createdAt,
    required String updatedAt,
    required dynamic deletedAt,
    int? replyId,
  }) = _CommentBody;

  factory CommentBody.fromJson(Map<String, dynamic> json) => _$CommentBodyFromJson(json);
}

@freezed
class ReplyBody with _$ReplyBody {
  const factory ReplyBody({
    required int commentId,
    int? postId,
    required String creator,
    required String content,
    required String createdAt,
    required String updatedAt,
    required dynamic deletedAt,
    int? replyId,
  }) = _ReplyBody;

  factory ReplyBody.fromJson(Map<String, dynamic> json) => _$ReplyBodyFromJson(json);
}
