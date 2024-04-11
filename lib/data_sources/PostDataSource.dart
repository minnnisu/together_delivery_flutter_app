// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:together_delivery_app/helper/apiUrls.dart';
// import 'package:together_delivery_app/models/postListModel.dart';
//
// import '../post/model/postModel.dart';
//
// @Injectable()
// class PostDataSource {
//   Future<List<Post>> fetchPostList() async {
//     final dio = Dio();
//     Response response = await dio.get(apiUrls.postGet);
//
//     Map<String, dynamic> responseMap = response.data;
//     return Posts.fromJson(responseMap).posts;
//   }
// }