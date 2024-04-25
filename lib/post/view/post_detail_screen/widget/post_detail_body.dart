import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/widget/Post_detail_extra_info.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';
import 'package:together_delivery_app/widgets/border.dart';

class PostDetailBody extends StatelessWidget {
  const PostDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostTitle(),
          PostContent(),
          PostDetailExtraInfo(),
        ],
      ),
    );
  }
}

class PostTitle extends ConsumerWidget {
  const PostTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Container(
      padding: EdgeInsets.only(bottom: 5),
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

class PostContent extends ConsumerWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: bottomBorder,
      child: Text(postDetailModel.content),
    );
  }
}