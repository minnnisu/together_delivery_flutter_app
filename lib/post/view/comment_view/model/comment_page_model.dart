import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';

part 'comment_page_model.freezed.dart';


@freezed
class CommentPageModel with _$CommentPageModel {
  const factory CommentPageModel({
    required CommentPageStatusType status,
    required int currentPage,
    required String bottomMessage,
  }) = _CommentPageModel;

}