import 'package:dio/dio.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';

import '../model/postListModel.dart';

class PostUtil{
  Future<PostListModel> getPostList(int page) async {
    Dio dio = Dio();
    Response response = await dio.get(apiUrls.postGet + '?page=$page');
    return PostListModel.fromJson(response.data);
  }
}