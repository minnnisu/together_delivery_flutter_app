import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';

import '../../post_detail/model/post_detail_response_model.dart';

abstract class PostRepository {
  Future<PostListResponse> getPostList(String page);

  Future<PostDetailResponseModel> getPostDetail(String postId);
}