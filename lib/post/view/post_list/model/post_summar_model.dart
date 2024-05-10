import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';

part 'post_summar_model.freezed.dart';

part 'post_summar_model.g.dart';

@freezed
class PostSummaryModel with _$PostSummaryModel{
  const factory PostSummaryModel({
    required int id,
    required String nickname,
    required String content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required MeetLocationModel meetLocation,
    required bool status,
    required String createdAt,
  }) = _PostSummaryModel;

  factory PostSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$PostSummaryModelFromJson(json);
}

