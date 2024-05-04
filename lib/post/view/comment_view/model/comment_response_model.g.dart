// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentResponseModelImpl _$$CommentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentResponseModelImpl(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentResponseModelImplToJson(
        _$CommentResponseModelImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      comment: CommentBody.fromJson(json['comment'] as Map<String, dynamic>),
      reply: Reply.fromJson(json['reply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'reply': instance.reply,
    };

_$ReplyImpl _$$ReplyImplFromJson(Map<String, dynamic> json) => _$ReplyImpl(
      replies: (json['replies'] as List<dynamic>)
          .map((e) => ReplyBody.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReplyImplToJson(_$ReplyImpl instance) =>
    <String, dynamic>{
      'replies': instance.replies,
    };
