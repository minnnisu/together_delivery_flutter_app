// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_update_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentUpdateResponseModelImpl _$$CommentUpdateResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentUpdateResponseModelImpl(
      commentId: json['commentId'] as int,
      postId: json['postId'] as int,
      creator: json['creator'] as String,
      content: json['content'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CommentUpdateResponseModelImplToJson(
        _$CommentUpdateResponseModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'creator': instance.creator,
      'content': instance.content,
      'updatedAt': instance.updatedAt,
    };
