import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post_save_request_model.freezed.dart';
part 'post_save_request_model.g.dart';

@freezed
class PostSaveRequestModel with _$PostSaveRequestModel{
  const factory PostSaveRequestModel({
    required String title,
    required String content,
    required String categoryCode,
    required String restaurantName,
    required int deliveryFee,
    required int minOrderFee,
    required String location,

  }) = _PostSaveRequestModel;

  factory PostSaveRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PostSaveRequestModelFromJson(json);
}