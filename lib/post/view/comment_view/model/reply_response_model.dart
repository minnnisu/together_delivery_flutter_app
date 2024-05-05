import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'comment_common_model.dart';

part 'reply_response_model.freezed.dart';
part 'reply_response_model.g.dart';

@freezed
class ReplyResponseModel with _$ReplyResponseModel {
  const factory ReplyResponseModel({
    required List<ReplyBody> replies,
  }) = _ReplyResponseModel;

  factory ReplyResponseModel.fromJson(Map<String, dynamic> json) => _$ReplyResponseModelFromJson(json);
}