import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_field.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/extra_info/post_image_input_field.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/section_header/post_create_section_header.dart';

import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class PostCreateExtraInfo extends ConsumerWidget {
  const PostCreateExtraInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostCreateSectionHeader(title: "추가정보"),
        TextInputField(
          labelName: "내용",
          maxLines: 5,
          hintText: "오늘 치킨 할인 진행해요!",
          isSuccess: postCreateState.content.isValid,
          statusMessage: postCreateState.content.stateMessage,
          onChanged: (value) =>
              ref.read(newPostCreateViewModel.notifier).onChangeContent(value),
        ),
        SizedBox(
          height: 3,
        ),
        PostImageInputField(),
        SizedBox(
          height: 3,
        ),
      ],
    );
  }
}
