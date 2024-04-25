import 'package:dio/dio.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';

import '../view/postList/model/post_list_model.dart';

class PostUtil{
  Future<PostListModel> getPostList(int page) async {
    Dio dio = Dio();
    Response response = await dio.get(apiUrls.postGet + '?page=$page');
    return PostListModel.fromJson(response.data);
  }
}