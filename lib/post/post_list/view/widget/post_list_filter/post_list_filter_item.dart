import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/post/post_list/view_model/post_list_filter_view_model.dart';

class PostListFilterItem extends ConsumerWidget {
  final int index;
  final String value;
  final bool isActive;
  final String name;

  const PostListFilterItem(
      {super.key,
      required this.value,
      required this.isActive,
      required this.name,
      required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => ref.read(postListFilterViewModelProvider.notifier).onChangeFilter(index),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: isActive ? AppColor.primaryColor : AppColor.gray95,
            borderRadius: BorderRadius.circular(10)),
        child: Text(name,textAlign: TextAlign.center,
            style: textTheme.bodyMedium!
                .copyWith(color: isActive ? AppColor.white : AppColor.black)),
      ),
    );
  }
}
