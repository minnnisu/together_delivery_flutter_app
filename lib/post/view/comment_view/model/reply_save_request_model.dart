import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reply_save_request_model.freezed.dart';
part 'reply_save_request_model.g.dart';

@freezed
class ReplySaveRequestModel with _$ReplySaveRequestModel {
  const factory ReplySaveRequestModel({
    required int commentId,
    required String content,
  }) = _ReplySaveRequestModel;

  factory ReplySaveRequestModel.fromJson(Map<String, dynamic> json) => _$ReplySaveRequestModelFromJson(json);
}
