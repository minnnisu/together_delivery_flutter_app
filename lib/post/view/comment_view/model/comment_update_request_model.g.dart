// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentUpdateRequestModelImpl _$$CommentUpdateRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentUpdateRequestModelImpl(
      commentId: json['commentId'] as int,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CommentUpdateRequestModelImplToJson(
        _$CommentUpdateRequestModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'content': instance.content,
    };
