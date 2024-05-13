import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:together_delivery_app/post/model/meet_location_model.dart';

part 'post_save_request_model.freezed.dart';
part 'post_save_request_model.g.dart';

PostSaveRequestModel postSaveRequestModelFromJson(String str) => PostSaveRequestModel.fromJson(json.decode(str));

String postSaveRequestModelToJson(PostSaveRequestModel data) => json.encode(data.toJson());

@freezed
class PostSaveRequestModel with _$PostSaveRequestModel {
  const factory PostSaveRequestModel({
    required String? content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required MeetLocationModel meetLocation,
  }) = _PostSaveRequestModel;

  factory PostSaveRequestModel.fromJson(Map<String, dynamic> json) => _$PostSaveRequestModelFromJson(json);
}