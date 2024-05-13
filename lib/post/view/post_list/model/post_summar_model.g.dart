// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_summar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSummaryModelImpl _$$PostSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSummaryModelImpl(
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
    );

Map<String, dynamic> _$$PostSummaryModelImplToJson(
        _$PostSummaryModelImpl instance) =>
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
    };
