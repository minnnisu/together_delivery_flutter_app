// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_update_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyUpdateResponseModelImpl _$$ReplyUpdateResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyUpdateResponseModelImpl(
      replyId: json['replyId'] as int,
      commentId: json['commentId'] as int,
      creator: json['creator'] as String,
      content: json['content'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$ReplyUpdateResponseModelImplToJson(
        _$ReplyUpdateResponseModelImpl instance) =>
    <String, dynamic>{
      'replyId': instance.replyId,
      'commentId': instance.commentId,
      'creator': instance.creator,
      'content': instance.content,
      'updatedAt': instance.updatedAt,
    };
