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
      title: json['title'] as String,
      content: json['content'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      createdAt: json['createdAt'] as String,
      status: json['status'] as bool,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PostSummaryModelImplToJson(
        _$PostSummaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'title': instance.title,
      'content': instance.content,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
    };
