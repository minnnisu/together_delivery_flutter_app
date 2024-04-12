import 'package:together_delivery_app/post/model/postListMetaDataModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:together_delivery_app/post/model/postSummaryModel.dart';

part 'postListModel.freezed.dart';
part 'postListModel.g.dart';

@freezed
class PostListModel with _$PostListModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostListModel({
    required PostListMetaDataModel metaData,
    required List<PostSummaryModel> posts,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
