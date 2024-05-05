import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reply_update_request_model.freezed.dart';
part 'reply_update_request_model.g.dart';

@freezed
class ReplyUpdateRequestModel with _$ReplyUpdateRequestModel {
  const factory ReplyUpdateRequestModel({
    required int replyId,
    required String content,
  }) = _ReplyUpdateRequestModel;

  factory ReplyUpdateRequestModel.fromJson(Map<String, dynamic> json) => _$ReplyUpdateRequestModelFromJson(json);
}
