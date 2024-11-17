import 'package:together_delivery_app/post_list/model/api/post_list_response.dart';

abstract class PostListRepository {
  Future<PostListResponse> getPostList(String page);
}