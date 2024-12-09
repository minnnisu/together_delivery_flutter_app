import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

import '../../../../common/routes/routes.dart';
import '../../model/post_detail_response_model.dart';
import '../../view_model/post_detail_load_view_model.dart';
import '../../view_model/post_detail_view_model.dart';

class PostDetailPopUp extends ConsumerWidget {
  final PostDetailResponseModel model;

  const PostDetailPopUp(this.model, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textTheme = Theme.of(context).textTheme;

    var popupItem = [
      PopupMenuItem(
        value: 'delete',
        child: Text('삭제', style: textTheme.bodySmall!.copyWith(),),
      ),
      PopupMenuItem(
        value: 'edit',
        child: Text('수정', style: textTheme.bodySmall!.copyWith()),
      ),
      PopupMenuItem(
        value: 'chat',
        child: Text('채팅방 입장', style: textTheme.bodySmall!.copyWith()),
      ),
    ];

    if (model.post.isPostCreator) {
      popupItem.add(PopupMenuItem(
        value: 'toggle',
        child: Text(model.post.status ? "모집마감으로 표시" : "모집중으로 표시", style: textTheme.bodySmall!.copyWith()),
      ));
    }


    return PopupMenuButton<String>(
      onSelected: (value) async {
        // 선택된 메뉴에 따른 작업
        if (value == 'delete') {
          print('delete 선택');
        } else if (value == 'edit') {
          print('edit 선택');
        } else if (value == 'chat') {
          await ref
              .read(postDetailViewModelProvider)
              .enterChatRoom(model.chatRoom.id);
          Navigator.pushNamed(context, RoutesName.chatRoom,
              arguments: model.post.id);
        } else if (value == 'toggle') {
          var status = await ref
              .read(postDetailViewModelProvider)
              .togglePostStatus(model.post.id.toString());

          ref
              .read(postDetailLoadViewModel(model.post.id.toString()).notifier)
              .togglePostStatus(status);
        }
      },
      itemBuilder: (BuildContext context) {
        return popupItem;
      },
      icon: Icon(Icons.more_vert), 
      color: AppColor.white,
    );
  }
}
