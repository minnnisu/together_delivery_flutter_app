// To parse this JSON data, do
//
//     final commentListModel = commentListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:together_delivery_app/post/view/comment_view/model/comment_model.dart';

part 'comment_list_model.freezed.dart';
part 'comment_list_model.g.dart';

CommentListModel commentListModelFromJson(String str) => CommentListModel.fromJson(json.decode(str));

String commentListModelToJson(CommentListModel data) => json.encode(data.toJson());

@freezed
class CommentListModel with _$CommentListModel {
  const factory CommentListModel({
    required List<CommentModel> comments,
  }) = _CommentListModel;

  factory CommentListModel.fromJson(Map<String, dynamic> json) => _$CommentListModelFromJson(json);
}