import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

import '../../../model/post_create_state.dart';
import '../../../view_model/new_post_create_view_model.dart';

class MeetLocationHeader extends ConsumerWidget {
  const MeetLocationHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostCreateState postCreateState = ref.watch(newPostCreateViewModel);
    var textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "주소",
          style: textTheme.bodyMedium!.copyWith(),
        ),
        GestureDetector(
          onTap: () {
            if (postCreateState.meetLocation.value == null) {
              Navigator.pushNamed(context, '/location/set');
              return;
            }

            ref.read(newPostCreateViewModel.notifier).removeMeetLocation();
          },
          child: Text(
            postCreateState.meetLocation.value == null ? "추가" : "삭제",
            textAlign: TextAlign.end,
            style: textTheme.bodyMedium!.copyWith(color: Color(0xff874CCC)),
          ),
        ),
      ],
    );
  }
}
