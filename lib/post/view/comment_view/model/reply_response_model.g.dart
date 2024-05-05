// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyResponseModelImpl _$$ReplyResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyResponseModelImpl(
      replies: (json['replies'] as List<dynamic>)
          .map((e) => ReplyBody.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReplyResponseModelImplToJson(
        _$ReplyResponseModelImpl instance) =>
    <String, dynamic>{
      'replies': instance.replies,
    };
