import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reply_update_response_model.freezed.dart';
part 'reply_update_response_model.g.dart';

@freezed
class ReplyUpdateResponseModel with _$ReplyUpdateResponseModel {
  const factory ReplyUpdateResponseModel({
    required int replyId,
    required int commentId,
    required String creator,
    required String content,
    required String updatedAt,
  }) = _ReplyUpdateResponseModel;

  factory ReplyUpdateResponseModel.fromJson(Map<String, dynamic> json) => _$ReplyUpdateResponseModelFromJson(json);
}
