// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_delete_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyDeleteResponseModelImpl _$$ReplyDeleteResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyDeleteResponseModelImpl(
      replyId: json['replyId'] as int,
      commentId: json['commentId'] as int,
      deletedAt: json['deletedAt'] as String,
    );

Map<String, dynamic> _$$ReplyDeleteResponseModelImplToJson(
        _$ReplyDeleteResponseModelImpl instance) =>
    <String, dynamic>{
      'replyId': instance.replyId,
      'commentId': instance.commentId,
      'deletedAt': instance.deletedAt,
    };
