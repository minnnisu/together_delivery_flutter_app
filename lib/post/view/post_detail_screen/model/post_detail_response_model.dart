// To parse this JSON data, do
//
//     final postDetailResponseModel = postDetailResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';
import 'dart:convert';

part 'post_detail_response_model.freezed.dart';
part 'post_detail_response_model.g.dart';

PostDetailResponseModel postDetailResponseModelFromJson(String str) => PostDetailResponseModel.fromJson(json.decode(str));

String postDetailResponseModelToJson(PostDetailResponseModel data) => json.encode(data.toJson());

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
    required Post post,
    required ChatRoom chatRoom,
  }) = _PostDetailResponseModel;

  factory PostDetailResponseModel.fromJson(Map<String, dynamic> json) => _$PostDetailResponseModelFromJson(json);
}

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required int id,
    required String createdAt,
    required dynamic deletedAt,
    required bool isChatRoomMember,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String nickname,
    required String? content,
    required String restaurantName,
    required String categoryCode,
    required int deliveryFee,
    required int minOrderFee,
    required MeetLocation meetLocation,
    required bool status,
    required List<PostImage> images,
    required String createdAt,
    required String updatedAt,
    required bool isPostCreator,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class MeetLocation with _$MeetLocation {
  const factory MeetLocation({
    required String address,
    required String shortAddress,
    required double latitude,
    required double longitude,
  }) = _MeetLocation;

  factory MeetLocation.fromJson(Map<String, dynamic> json) => _$MeetLocationFromJson(json);
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
