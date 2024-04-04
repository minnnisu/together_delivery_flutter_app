import 'package:dio/dio.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/models/post.dart';

import '../models/postList.dart';

class PostService{
  Future<List<Post>> getPostList() async{
    final dio = Dio();
    Response response = await dio.get(apiUrls.postGet);

    Map<String, dynamic> responseMap = response.data;
    return PostList.fromJson(responseMap).posts;
  }
}