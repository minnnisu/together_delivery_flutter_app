import 'package:together_delivery_app/post/post_detail/model/chat_room_enter_response_model.dart';
import 'package:together_delivery_app/post/post_detail/model/post_status_toggle_response_model.dart';

import '../post_detail/model/chat_room_access_response_model.dart';
import '../post_detail/model/post_detail_response_model.dart';
import '../post_list/model/api/post_list_response.dart';

abstract class PostRepository {
  Future<PostListResponse> getPostList(int? cursor, String category);

  Future<PostDetailResponseModel> getPostDetail(String postId);

  Future<ChatRoomAccessResponseModel> checkChatRoomAccessValid(String chatRoomId);

  Future<ChatRoomEnterResponseModel> enterChatRoom(String chatRoomId);

  Future<PostStatusToggleResponseModel> togglePostStatus(String postId);
}