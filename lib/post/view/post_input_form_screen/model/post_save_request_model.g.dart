// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_save_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSaveRequestModelImpl _$$PostSaveRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSaveRequestModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      meetLocation: MeetLocationModel.fromJson(
          json['meetLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostSaveRequestModelImplToJson(
        _$PostSaveRequestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'restaurantName': instance.restaurantName,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'meetLocation': instance.meetLocation,
    };
