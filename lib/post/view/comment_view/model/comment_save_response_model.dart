import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_save_response_model.freezed.dart';
part 'comment_save_response_model.g.dart';

@freezed
class CommentSaveResponseModel with _$CommentSaveResponseModel {
  const factory CommentSaveResponseModel({
    required int commentId,
    required int postId,
    required String creator,
    required String content,
    required String createdAt,
  }) = _CommentSaveResponseModel;

  factory CommentSaveResponseModel.fromJson(Map<String, dynamic> json) => _$CommentSaveResponseModelFromJson(json);
}
