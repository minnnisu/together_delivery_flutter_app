// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentBodyImpl _$$CommentBodyImplFromJson(Map<String, dynamic> json) =>
    _$CommentBodyImpl(
      commentId: json['commentId'] as int,
      postId: json['postId'] as int?,
      creator: json['creator'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'],
      replyId: json['replyId'] as int?,
    );

Map<String, dynamic> _$$CommentBodyImplToJson(_$CommentBodyImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'creator': instance.creator,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'replyId': instance.replyId,
    };

_$ReplyBodyImpl _$$ReplyBodyImplFromJson(Map<String, dynamic> json) =>
    _$ReplyBodyImpl(
      commentId: json['commentId'] as int,
      postId: json['postId'] as int?,
      creator: json['creator'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'],
      replyId: json['replyId'] as int?,
    );

Map<String, dynamic> _$$ReplyBodyImplToJson(_$ReplyBodyImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'creator': instance.creator,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'replyId': instance.replyId,
    };

_$MetaDataImpl _$$MetaDataImplFromJson(Map<String, dynamic> json) =>
    _$MetaDataImpl(
      totalPage: json['totalPage'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$MetaDataImplToJson(_$MetaDataImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'currentPage': instance.currentPage,
    };
