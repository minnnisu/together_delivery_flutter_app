import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_update_request_model.freezed.dart';
part 'comment_update_request_model.g.dart';

@freezed
class CommentUpdateRequestModel with _$CommentUpdateRequestModel {
  const factory CommentUpdateRequestModel({
    required int commentId,
    required String content,
  }) = _CommentUpdateRequestModel;

  factory CommentUpdateRequestModel.fromJson(Map<String, dynamic> json) => _$CommentUpdateRequestModelFromJson(json);
}
