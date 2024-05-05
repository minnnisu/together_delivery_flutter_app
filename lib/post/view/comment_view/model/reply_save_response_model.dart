import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reply_save_response_model.freezed.dart';
part 'reply_save_response_model.g.dart';

@freezed
class ReplySaveResponseModel with _$ReplySaveResponseModel {
  const factory ReplySaveResponseModel({
    required int replyId,
    required int commentId,
    required String creator,
    required String content,
    required String createdAt,
  }) = _ReplySaveResponseModel;

  factory ReplySaveResponseModel.fromJson(Map<String, dynamic> json) => _$ReplySaveResponseModelFromJson(json);
}
  