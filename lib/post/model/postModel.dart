import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'postModel.freezed.dart';

part 'postModel.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required int id,
    required String nickname,
    required String title,
    required String content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required String location,
    required String createdAt,
    required String updatedAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
