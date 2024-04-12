import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/providers/dioProvider.dart';

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final dio = ref.read(dioProvider);
  return PostRepository(dio);
});

class PostRepository {
  final Dio dio;

  PostRepository(this.dio);

  Future<PostDetailModel> getPostDetail(int postId) async{
    final response = await dio.get(
      '${apiUrls.postDetailGet}/$postId',
    );
    return PostDetailModel.fromJson(response.data);
  }
}
