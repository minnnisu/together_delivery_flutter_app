import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_response_model.dart';

final replyRepositoryProvider = Provider<ReplyRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return ReplyRepository(dio);
});

class ReplyRepository {
  final Dio dio;

  ReplyRepository(this.dio);

  Future<ReplyResponseModel> fetchReply(int? cursor, int commentId) async {
    try {
      Map<String, dynamic> queryParameters = {};
      queryParameters['commentId'] = commentId;
      if(cursor != null) {
        queryParameters['cursor'] = cursor;
      }

      final response = await dio.get(apiUrls.replyGet,
          queryParameters: queryParameters);
      return ReplyResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'NoSuchCommentError') {
        throw CustomException(errorCode: ErrorCode.NoSuchCommentError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchReplyError') {
        throw CustomException(errorCode: ErrorCode.NoSuchReplyError);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }
}
