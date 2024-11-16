import 'package:dio/dio.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/post_list/model/post_list_model.dart';

class PostUtil{
  Future<PostListModel> getPostList(int page) async {
    Dio dio = Dio();
    final response = await dio.get(apiUrls.postGet, queryParameters: {"page": page});
    return PostListModel.fromJson(response.data);
  }
}