// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentResponseModelImpl _$$CommentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentResponseModelImpl(
      metaData: MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentResponseModelImplToJson(
        _$CommentResponseModelImpl instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
      'comments': instance.comments,
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
