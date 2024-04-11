// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListModelImpl _$$PostListModelImplFromJson(Map<String, dynamic> json) =>
    _$PostListModelImpl(
      metaData: PostListMetaDataModel.fromJson(
          json['metaData'] as Map<String, dynamic>),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostListModelImplToJson(_$PostListModelImpl instance) =>
    <String, dynamic>{
      'metaData': instance.metaData.toJson(),
      'posts': instance.posts.map((e) => e.toJson()).toList(),
    };
