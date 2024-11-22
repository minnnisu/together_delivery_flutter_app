import '../post_detail/model/post_detail_response_model.dart';
import '../post_list/model/api/post_list_response.dart';

abstract class PostRepository {
  Future<PostListResponse> getPostList(String page);

  Future<PostDetailResponseModel> getPostDetail(String postId);
}