import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required int commentId,
    required int postId,
    required String creator,
    required String content,
    required String createdAt,
    required String updatedAt,
    required String? deletedAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}