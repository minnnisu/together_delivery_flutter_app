import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_save_request_model.freezed.dart';
part 'comment_save_request_model.g.dart';

@freezed
class CommentSaveRequestModel with _$CommentSaveRequestModel {
  const factory CommentSaveRequestModel({
    required int postId,
    required String content,
  }) = _CommentSaveRequestModel;

  factory CommentSaveRequestModel.fromJson(Map<String, dynamic> json) => _$CommentSaveRequestModelFromJson(json);
}
