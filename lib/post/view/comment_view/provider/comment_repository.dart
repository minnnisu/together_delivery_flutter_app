import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_response_model.dart';

final commentRepositoryProvider = Provider<CommentRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return CommentRepository(dio);
});

class CommentRepository {
  final Dio dio;

  CommentRepository(this.dio);

  Future<CommentResponseModel> getCommentList(int pageKey, int postId) async {
    try {
      final response = await dio.get(apiUrls.commentGet,
          queryParameters: {"id": postId, "page": pageKey});
      return CommentResponseModel.fromJson(response.data);
    } on Dio catch (e) {
      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }
}
