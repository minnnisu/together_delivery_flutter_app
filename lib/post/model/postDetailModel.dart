import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'postDetailModel.freezed.dart';

part 'postDetailModel.g.dart';

abstract class PostDetailModelBase {}

@freezed
class PostDetailModel extends PostDetailModelBase with _$PostDetailModel {
  const factory PostDetailModel({
    required int id,
    required String nickname,
    required String title,
    required String content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required String location,
    required bool status,
    required String createdAt,
    required String updatedAt,
  }) = _PostDetailModel;

  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);
}

class PostDetailModelError extends PostDetailModelBase {
  final String message;

 PostDetailModelError({
    required this.message,
  });
}

class PostDetailModelLoading extends PostDetailModelBase {}