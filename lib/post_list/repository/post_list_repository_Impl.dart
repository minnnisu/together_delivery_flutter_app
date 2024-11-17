import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/service/authentication_network_api_service.dart';
import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';
import 'package:together_delivery_app/post_list/repository/post_list_repository.dart';

import '../../common/config/api_url.dart';
import '../../common/service/api_service.dart';

final postListRepositoryImplProvider = Provider<PostListRepository>(
  (ref) {
    final apiService = ref.watch(authenticationNetworkApiServiceProvider);
    return PostListRepositoryImpl(apiService);
  },
);

class PostListRepositoryImpl extends PostListRepository {
  final ApiService _apiService;

  PostListRepositoryImpl(this._apiService);

  @override
  Future<PostListResponse> getPostList(String page) async{
    Response<dynamic> response = await _apiService.getGetApiResponse(
        ApiUrl.postGet,
        queryParameters: Map.of({"page": page}));
    return PostListResponse.fromJson(response.data);
  }
}
