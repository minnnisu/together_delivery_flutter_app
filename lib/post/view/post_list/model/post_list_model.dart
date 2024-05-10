import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_list_meta_data_model.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_summar_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

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
