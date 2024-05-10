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
      content: json['content'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      status: json['status'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PostSummaryModelImplToJson(
        _$PostSummaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'content': instance.content,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
