// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_save_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplySaveResponseModelImpl _$$ReplySaveResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplySaveResponseModelImpl(
      replyId: json['replyId'] as int,
      commentId: json['commentId'] as int,
      creator: json['creator'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ReplySaveResponseModelImplToJson(
        _$ReplySaveResponseModelImpl instance) =>
    <String, dynamic>{
      'replyId': instance.replyId,
      'commentId': instance.commentId,
      'creator': instance.creator,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
