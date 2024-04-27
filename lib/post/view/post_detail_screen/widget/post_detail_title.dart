import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/post_detail_response_model.dart';
import '../provider/post_detail_provider.dart';

class PostTitle extends ConsumerWidget {
  const PostTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
    ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        postDetailModel.title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
