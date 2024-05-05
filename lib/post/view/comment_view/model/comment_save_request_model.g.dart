// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_save_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentSaveRequestModelImpl _$$CommentSaveRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentSaveRequestModelImpl(
      postId: json['postId'] as int,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CommentSaveRequestModelImplToJson(
        _$CommentSaveRequestModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'content': instance.content,
    };
