import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_delete_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_update_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_update_response_model.dart';

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
      if (cursor != null) {
        queryParameters['cursor'] = cursor;
      }

      final response =
          await dio.get(apiUrls.replyGet, queryParameters: queryParameters);
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

  Future<ReplySaveResponseModel> saveReply(
      ReplySaveRequestModel replySaveRequestModel) async {
    try {
      final response = await dio.post(
        apiUrls.replySave,
        options: Options(
          headers: {
            'accessToken': 'true',
          },
        ),
        data: replySaveRequestModel.toJson(),
      );

      return ReplySaveResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchCommentError') {
        throw CustomException(errorCode: ErrorCode.NoSuchCommentError);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }

  Future<ReplyUpdateResponseModel> updateReply(
      ReplyUpdateRequestModel replyUpdateRequestModel) async {
    try {
      final response = await dio.patch(
        apiUrls.replyUpdate,
        options: Options(
          headers: {
            'accessToken': 'true',
          },
        ),
        data: replyUpdateRequestModel.toJson(),
      );

      return ReplyUpdateResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchReplyError') {
        throw CustomException(errorCode: ErrorCode.NoSuchReplyError);
      }
      if (e.response?.data['errorCode'] == 'DeletedReplyError') {
        throw CustomException(errorCode: ErrorCode.DeletedReplyError);
      }

      if (e.response?.data['errorCode'] == 'NotTheAuthorOfTheReply') {
        throw CustomException(errorCode: ErrorCode.NotTheAuthorOfTheReply);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }

  Future<ReplyDeleteResponseModel> deleteReply(int replyId) async {
    try {
      final response = await dio.delete(
        "${apiUrls.replyDelete}/$replyId",
        options: Options(
          headers: {
            'accessToken': 'true',
          },
        ),
      );

      return ReplyDeleteResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchReplyError') {
        throw CustomException(errorCode: ErrorCode.NoSuchReplyError);
      }
      if (e.response?.data['errorCode'] == 'DeletedReplyError') {
        throw CustomException(errorCode: ErrorCode.DeletedReplyError);
      }

      if (e.response?.data['errorCode'] == 'NotTheAuthorOfTheReply') {
        throw CustomException(errorCode: ErrorCode.NotTheAuthorOfTheReply);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }
}
