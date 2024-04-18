import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post_detail_response_model.freezed.dart';
part 'post_detail_response_model.g.dart';

abstract class PostDetailResponseModelBase {}

class PostDetailResponseModelLoading extends PostDetailResponseModelBase {}

class PostDetailResponseModelError extends PostDetailResponseModelBase {
  final String message;

  PostDetailResponseModelError({
    required this.message,
  });
}

@freezed
class PostDetailResponseModel extends PostDetailResponseModelBase with _$PostDetailResponseModel {
  const factory PostDetailResponseModel({
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
    required List<Image> images,
  }) = _PostDetailResponseModel;

  factory PostDetailResponseModel.fromJson(Map<String, dynamic> json) => _$PostDetailResponseModelFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required int id,
    required String imageName,
    required String createdAt,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}