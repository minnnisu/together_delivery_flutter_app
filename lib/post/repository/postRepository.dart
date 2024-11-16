import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/exception/SuccessFailure.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/common/provider/dioProvider.dart';
import 'package:together_delivery_app/common/secureStore/secureStore.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_response_model.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

import '../view/post_input_form_screen/model/post_save_request_model.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final userModelBase = ref.watch(authProvider);
  return PostRepository(dio: dio, userModelBase: userModelBase);
});

class PostRepository {
  final Dio dio;
  final UserModelBase? userModelBase;

  PostRepository({required this.dio, required this.userModelBase});

  Future<PostDetailResponseModel> getPostDetail(int postId) async {
    Options? options;
    if(userModelBase != null && userModelBase is UserModel){
      options = Options(headers: {"AccessToken": "true"});
    }else {
      options = null;
    }

    final response = await dio.get(
      options: options,
      '${apiUrls.postDetailGet}/$postId',
    );
    return PostDetailResponseModel.fromJson(response.data);
  }

  Future<Result<PostSaveResponseModel, Exception>> savePostDetail(
      PostSaveRequestModel postSaveRequestModel,
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
