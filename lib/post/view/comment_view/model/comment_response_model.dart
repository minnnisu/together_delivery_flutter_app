import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'comment_model.dart';

part 'comment_response_model.freezed.dart';
part 'comment_response_model.g.dart';

CommentResponseModel commentResponseModelFromJson(String str) => CommentResponseModel.fromJson(json.decode(str));

String commentResponseModelToJson(CommentResponseModel data) => json.encode(data.toJson());

@freezed
class CommentResponseModel with _$CommentResponseModel {
  const factory CommentResponseModel({
    required MetaData metaData,
    required List<CommentModel> comments,
  }) = _CommentResponseModel;

  factory CommentResponseModel.fromJson(Map<String, dynamic> json) => _$CommentResponseModelFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    required int totalPage,
    required int currentPage,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);
}