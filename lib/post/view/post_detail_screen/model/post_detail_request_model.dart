import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post_detail_request_model.freezed.dart';

part 'post_detail_request_model.g.dart';

@freezed
class PostDetailRequest with _$PostDetailRequest {
  const factory PostDetailRequest({
    required int postId,
  }) = _PostDetailRequest;

  factory PostDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$PostDetailRequestFromJson(json);
}