import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_delete_response_model.freezed.dart';
part 'comment_delete_response_model.g.dart';

@freezed
class CommentDeleteResponseModel with _$CommentDeleteResponseModel {
  const factory CommentDeleteResponseModel({
    required int commentId,
    required int postId,
    required String deletedAt,
  }) = _CommentDeleteResponseModel;

  factory CommentDeleteResponseModel.fromJson(Map<String, dynamic> json) => _$CommentDeleteResponseModelFromJson(json);
}