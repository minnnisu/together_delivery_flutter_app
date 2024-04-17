// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postSaveRequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSaveRequestModelImpl _$$PostSaveRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSaveRequestModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      categoryCode: json['categoryCode'] as String,
      restaurantName: json['restaurantName'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$PostSaveRequestModelImplToJson(
        _$PostSaveRequestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'categoryCode': instance.categoryCode,
      'restaurantName': instance.restaurantName,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'location': instance.location,
    };
