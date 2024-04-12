// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailModelImpl _$$PostDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailModelImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      location: json['location'] as String,
      status: json['status'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PostDetailModelImplToJson(
        _$PostDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'title': instance.title,
      'content': instance.content,
      'restaurantName': instance.restaurantName,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'location': instance.location,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
