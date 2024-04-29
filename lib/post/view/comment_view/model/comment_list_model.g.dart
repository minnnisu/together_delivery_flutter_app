// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentListModelImpl _$$CommentListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentListModelImpl(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentListModelImplToJson(
        _$CommentListModelImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };
