import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_save_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_save_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_update_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_update_response_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_request_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/reply_save_response_model.dart';

final commentRepositoryProvider = Provider<CommentRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return CommentRepository(dio);
});

class CommentRepository {
  final Dio dio;

  CommentRepository(this.dio);

  Future<CommentResponseModel> getCommentList(int? cursor, int postId) async {
    try {
      Map<String, dynamic> queryParameters = {};
      queryParameters['postId'] = postId;
      if(cursor != null) {
        queryParameters['cursor'] = cursor;
      }

      final response = await dio.get(apiUrls.commentGet,
          queryParameters: queryParameters);
      return CommentResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }

  Future<CommentSaveResponseModel> saveComment(
      CommentSaveRequestModel commentSaveRequestModel) async {
    try {
      final response = await dio.post(
        apiUrls.commentSave,
        options: Options(
          headers: {
            'accessToken': 'true',
          },
        ),
        data: commentSaveRequestModel.toJson(),
      );
      return CommentSaveResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchPostError') {
        throw CustomException(errorCode: ErrorCode.NoSuchPostError);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }

  Future<CommentUpdateResponseModel> updateComment(
      CommentUpdateRequestModel commentUpdateRequestModel) async {
    try {
      final response = await dio.patch(
        apiUrls.commentUpdate,
        options: Options(
          headers: {
            'accessToken': 'true',
          },
        ),
        data: commentUpdateRequestModel.toJson(),
      );

      return CommentUpdateResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data['errorCode'] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data['errorCode'] == 'NoSuchCommentError') {
        throw CustomException(errorCode: ErrorCode.NoSuchCommentError);
      }

      if (e.response?.data['errorCode'] == 'DeletedCommentError') {
        throw CustomException(errorCode: ErrorCode.DeletedCommentError);
      }

      if (e.response?.data['errorCode'] == 'NotTheAuthorOfTheComment') {
        throw CustomException(errorCode: ErrorCode.NotTheAuthorOfTheComment);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);
    }
  }

  Future<ReplySaveResponseModel> addNewReply(ReplySaveRequestModel replySaveRequestModel) async {
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
}
