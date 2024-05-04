// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_save_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentSaveResponseModelImpl _$$CommentSaveResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentSaveResponseModelImpl(
      commentId: json['commentId'] as int,
      postId: json['postId'] as int,
      creator: json['creator'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$CommentSaveResponseModelImplToJson(
        _$CommentSaveResponseModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'creator': instance.creator,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
