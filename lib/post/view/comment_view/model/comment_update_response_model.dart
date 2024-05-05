import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_update_response_model.freezed.dart';
part 'comment_update_response_model.g.dart';

@freezed
class CommentUpdateResponseModel with _$CommentUpdateResponseModel {
  const factory CommentUpdateResponseModel({
    required int commentId,
    required int postId,
    required String creator,
    required String content,
    required String updatedAt,
  }) = _CommentUpdateResponseModel;

  factory CommentUpdateResponseModel.fromJson(Map<String, dynamic> json) => _$CommentUpdateResponseModelFromJson(json);
}
