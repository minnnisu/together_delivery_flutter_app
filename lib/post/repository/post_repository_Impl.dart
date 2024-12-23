import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/service/authentication_network_api_service.dart';
import 'package:together_delivery_app/post/post_detail/model/chat_room_access_response_model.dart';
import 'package:together_delivery_app/post/post_detail/model/post_status_toggle_response_model.dart';
import 'package:together_delivery_app/post/repository/post_repository.dart';

import '../../common/config/api_url.dart';
import '../../common/service/api_service.dart';
import '../post_detail/model/chat_room_enter_response_model.dart';
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

  @override
  Future<PostDetailResponseModel> getPostDetail(String postId) async {
    Response<dynamic> response = await _apiService.getGetApiResponse(
      "${ApiUrl.postDetailGet}/$postId",
    );
    return PostDetailResponseModel.fromJson(response.data);
  }

  @override
  Future<ChatRoomAccessResponseModel> checkChatRoomAccessValid(String chatRoomId) async {
    var response = await _apiService.getGetApiResponse("${ApiUrl.ChatRoomAccessCheck1}$chatRoomId${ApiUrl.ChatRoomAccessCheck2}");
    return ChatRoomAccessResponseModel.fromJson(response.data);
  }

  @override
  Future<ChatRoomEnterResponseModel> enterChatRoom(String chatRoomId) async {
    var response = await _apiService.getPostApiResponse("${ApiUrl.ChatRoomEnter1}$chatRoomId${ApiUrl.ChatRoomEnter2}");
    return ChatRoomEnterResponseModel.fromJson(response.data);
  }

  @override
  Future<PostStatusToggleResponseModel> togglePostStatus(String postId) async {
    var response = await _apiService.getPostApiResponse("${ApiUrl.postStatusToggle1}$postId${ApiUrl.postStatusToggle2}");
    return PostStatusToggleResponseModel.fromJson(response.data);
  }


}
