import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/api_url.dart';
import 'package:together_delivery_app/common/service/api_service.dart';
import 'package:together_delivery_app/common/service/authentication_network_api_service.dart';
import 'package:together_delivery_app/post/new_post_create/model/post_create_response_model.dart';
import 'package:together_delivery_app/post/new_post_create/repository/post_create_repository.dart';

final postCreateRepositoryProvider = Provider<PostCreateRepository>(
      (ref) {
    final apiService = ref.watch(authenticationNetworkApiServiceProvider);
    return PostCreateRepositoryImpl(apiService);
  },
);

class PostCreateRepositoryImpl extends PostCreateRepository {
  final ApiService apiService;

  PostCreateRepositoryImpl(this.apiService);

  @override
  Future<PostCreateResponseModel> createNewPost(FormData formData) async {
    var response = await apiService.getPostApiResponse(ApiUrl.postCreate,data: formData);
    return PostCreateResponseModel.fromJson(response.data);
  }
}