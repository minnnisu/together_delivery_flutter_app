// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      location: json['location'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
