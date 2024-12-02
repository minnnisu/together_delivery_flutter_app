import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/input/text_input_state_message.dart';

import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class MeetLocationAddress extends ConsumerWidget {
  const MeetLocationAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        postCreateState.meetLocation.value != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  postCreateState.meetLocation.value!.address,
                  style: textTheme.bodyMedium!.copyWith(),
                ),
              )
            : const SizedBox(),
        TextInputStateMessage(
          isSuccess: postCreateState.meetLocation.isValid,
          message: postCreateState.meetLocation.stateMessage,
        )
      ],
    );
  }
}
