import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:together_delivery_app/post/model/meet_location_model.dart';

part 'post_save_response_model.freezed.dart';
part 'post_save_response_model.g.dart';

PostSaveResponseModel postSaveResponseModelFromJson(String str) => PostSaveResponseModel.fromJson(json.decode(str));

String postSaveResponseModelToJson(PostSaveResponseModel data) => json.encode(data.toJson());

@freezed
class PostSaveResponseModel with _$PostSaveResponseModel {
  const factory PostSaveResponseModel({
    required int id,
    required String username,
    required String title,
    required String content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required MeetLocationModel meetLocation,
    required bool status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<PostImage> postImages,
  }) = _PostSaveResponseModel;

  factory PostSaveResponseModel.fromJson(Map<String, dynamic> json) => _$PostSaveResponseModelFromJson(json);
}

@freezed
class PostImage with _$PostImage {
  const factory PostImage({
    required int id,
    required String imageName,
    required DateTime createdAt,
  }) = _PostImage;

  factory PostImage.fromJson(Map<String, dynamic> json) => _$PostImageFromJson(json);
}
