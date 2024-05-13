// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_save_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSaveResponseModelImpl _$$PostSaveResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSaveResponseModelImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      content: json['content'] as String?,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      meetLocation: MeetLocationModel.fromJson(
          json['meetLocation'] as Map<String, dynamic>),
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      postImages: (json['postImages'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostSaveResponseModelImplToJson(
        _$PostSaveResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'content': instance.content,
      'restaurantName': instance.restaurantName,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'meetLocation': instance.meetLocation,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'postImages': instance.postImages,
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
