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
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(borderGreyColor),
            width: 0.9,
          ),
        ),
      ),
      width: double.infinity,
      child: Text(postDetailModel.content),
    );
  }
}