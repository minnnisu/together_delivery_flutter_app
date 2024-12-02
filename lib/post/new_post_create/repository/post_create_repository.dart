import 'package:dio/dio.dart';

import '../model/post_create_response_model.dart';

abstract class PostCreateRepository {
  Future<PostCreateResponseModel> createNewPost(FormData formData);
}