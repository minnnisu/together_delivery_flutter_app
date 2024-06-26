import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/exception/SuccessFailure.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_response_model.dart';

import '../view/post_input_form_screen/model/post_save_request_model.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return PostRepository(dio);
});

class PostRepository {
  final Dio dio;

  PostRepository(this.dio);

  Future<PostDetailResponseModel> getPostDetail(int postId) async {
    final response = await dio.get(
      '${apiUrls.postDetailGet}/$postId',
    );
    return PostDetailResponseModel.fromJson(response.data);
  }

  Future<Result<PostSaveResponseModel, Exception>> savePostDetail(PostSaveRequestModel postSaveRequestModel,
      List<MultipartFile> images) async {
    Map<String, Object> formDataObject = {};

    if (images.isNotEmpty) {
      formDataObject = {
        'post': MultipartFile.fromString(
            jsonEncode(postSaveRequestModel.toJson()),
            contentType: Headers.jsonMimeType),
        'files': images,
      };
    } else {
      formDataObject = {
        'post': MultipartFile.fromString(
            jsonEncode(postSaveRequestModel.toJson()),
            contentType: Headers.jsonMimeType),
      };
    }

    FormData formData = FormData.fromMap(formDataObject);

    try {
      final response = await dio.post(apiUrls.postDetailPost,
          options: Options(headers: {'accessToken': 'true'}), data: formData);
      return Success(PostSaveResponseModel.fromJson(response.data));
    } catch (e) {
      return Failure(Exception(e));
    }
  }
}
