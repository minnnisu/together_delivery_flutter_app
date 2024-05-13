import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/const/const.dart';
import '../model/post_detail_response_model.dart';
import '../provider/post_detail_provider.dart';

class PostContent extends ConsumerWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
    ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Container(
      padding: EdgeInsets.only(top: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "작성자의 글",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(postDetailModel.content!),
          ),
        ],
      ),
    );
  }
}