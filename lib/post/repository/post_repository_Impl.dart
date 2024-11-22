import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/service/authentication_network_api_service.dart';
import 'package:together_delivery_app/post/repository/post_repository.dart';

import '../../common/config/api_url.dart';
import '../../common/service/api_service.dart';
import '../post_detail/model/post_detail_response_model.dart';
import '../post_list/model/api/post_list_response.dart';

final postRepositoryImplProvider = Provider<PostRepository>(
  (ref) {
    final apiService = ref.watch(authenticationNetworkApiServiceProvider);
    return PostRepositoryImpl(apiService);
  },
);

class PostRepositoryImpl extends PostRepository {
  final ApiService _apiService;

  PostRepositoryImpl(this._apiService);

  @override
  Future<PostListResponse> getPostList(String page) async {
    Response<dynamic> response = await _apiService.getGetApiResponse(
        ApiUrl.postGet,
        queryParameters: Map.of({"page": page}));
    return PostListResponse.fromJson(response.data);
  }

  Future<PostDetailResponseModel> getPostDetail(String postId) async {
    Response<dynamic> response = await _apiService.getGetApiResponse(
      "${ApiUrl.postDetailGet}/$postId",
    );
    return PostDetailResponseModel.fromJson(response.data);
  }
}
