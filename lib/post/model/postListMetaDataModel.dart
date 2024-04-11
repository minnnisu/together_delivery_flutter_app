import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'postListMetaDataModel.freezed.dart';

part 'postListMetaDataModel.g.dart';


@freezed
class PostListMetaDataModel with _$PostListMetaDataModel {
  const factory PostListMetaDataModel({
    required int totalPage,
    required int currentPage,
  }) = _PostListMetaDataModel;

  factory PostListMetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$PostListMetaDataModelFromJson(json);
}
