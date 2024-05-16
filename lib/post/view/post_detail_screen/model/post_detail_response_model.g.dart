// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailResponseModelImpl _$$PostDetailResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailResponseModelImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      content: json['content'] as String?,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      meetLocation: MeetLocationModel.fromJson(
          json['meetLocation'] as Map<String, dynamic>),
      status: json['status'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostDetailResponseModelImplToJson(
        _$PostDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'content': instance.content,
      'restaurantName': instance.restaurantName,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'meetLocation': instance.meetLocation,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
    };

_$PostImageImpl _$$PostImageImplFromJson(Map<String, dynamic> json) =>
    _$PostImageImpl(
      id: json['id'] as int,
      imageName: json['imageName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PostImageImplToJson(_$PostImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageName': instance.imageName,
      'createdAt': instance.createdAt.toIso8601String(),
    };
