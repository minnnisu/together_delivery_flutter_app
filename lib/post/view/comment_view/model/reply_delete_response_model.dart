import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reply_delete_response_model.freezed.dart';
part 'reply_delete_response_model.g.dart';

@freezed
class ReplyDeleteResponseModel with _$ReplyDeleteResponseModel {
  const factory ReplyDeleteResponseModel({
    required int replyId,
    required int commentId,
    required String deletedAt,
  }) = _ReplyDeleteResponseModel;

  factory ReplyDeleteResponseModel.fromJson(Map<String, dynamic> json) => _$ReplyDeleteResponseModelFromJson(json);
}
