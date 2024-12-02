import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/post/new_post_create/view_model/new_post_create_view_model.dart';

import '../../../../../common/widgets/button/big_rounded_large_button.dart';

class PostCreateSubmitButton extends ConsumerWidget {
  const PostCreateSubmitButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BigRoundedLargeButton(
        buttonName: "등록하기",
        isActivate: true,
        onTap: () async {
          var postCreateResponseModel = await ref.read(newPostCreateViewModel.notifier).submitNewPost();
          Navigator.popAndPushNamed(context, RoutesName.postDetail, arguments: postCreateResponseModel.post.id);
        }
    );
  }
}
