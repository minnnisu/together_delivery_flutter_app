import 'package:injectable/injectable.dart';
import 'package:together_delivery_app/models/post.dart';

import '../data_sources/PostDataSource.dart';

@Injectable()
class PostRepository{
  final PostDataSource postDataSource;

  PostRepository(this.postDataSource);

  Future<List<Post>> fetchPostList() async{
    return await postDataSource.fetchPostList();
  }
}