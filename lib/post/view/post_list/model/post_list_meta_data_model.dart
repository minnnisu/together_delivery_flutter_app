import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post_list_meta_data_model.freezed.dart';

part 'post_list_meta_data_model.g.dart';


@freezed
class PostListMetaDataModel with _$PostListMetaDataModel {
  const factory PostListMetaDataModel({
    required int totalPage,
    required int currentPage,
  }) = _PostListMetaDataModel;

  factory PostListMetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$PostListMetaDataModelFromJson(json);
}
