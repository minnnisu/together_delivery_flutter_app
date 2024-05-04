// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_delete_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDeleteResponseModelImpl _$$CommentDeleteResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentDeleteResponseModelImpl(
      commentId: json['commentId'] as int,
      postId: json['postId'] as int,
      deletedAt: json['deletedAt'] as String,
    );

Map<String, dynamic> _$$CommentDeleteResponseModelImplToJson(
        _$CommentDeleteResponseModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'deletedAt': instance.deletedAt,
    };
