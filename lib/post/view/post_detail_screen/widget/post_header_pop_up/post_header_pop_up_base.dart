import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/model/chat_room_create_request_model.dart';
import 'package:together_delivery_app/chat/provider/chat_repository.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';

class PostHeaderPopUpBase<T> extends ConsumerWidget {
  final List<PopupMenuEntry<T>> Function(BuildContext buildContext) itemBuilder;
  final void Function(T popUpType) onSelected;

  const PostHeaderPopUpBase(
      {required this.onSelected, required this.itemBuilder, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<T>(
      child: Container(
        height: 36,
        width: 32,
        padding: EdgeInsets.only(left: 4),
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.more_vert,
          size: 24,
          color: Color(0xff9a9a9a),
        ),
      ),
      color: Color(0xffffffff),
      surfaceTintColor: Color(0xffffffff),
      onSelected: onSelected,
      itemBuilder: itemBuilder,
    );
  }
}


