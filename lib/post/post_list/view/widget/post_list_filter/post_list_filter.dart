import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/post_list/view/widget/post_list_filter/post_list_filter_item.dart';

import '../../../../../common/config/color/app_color.dart';
import '../../../view_model/post_list_filter_view_model.dart';

class PostListFilter extends ConsumerWidget {
  const PostListFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListFilterState = ref.watch(postListFilterViewModelProvider);

    List<Widget> filterWidgets = <Widget>[];
    var index = 0;

    for (var element in postListFilterState.filterItems) {
      if (index != postListFilterState.selectedItem) {
        filterWidgets.add(
          PostListFilterItem(
            value: element.categoryCode,
            index: index++,
            isActive: false,
            name: element.korean,
          ),
        );
      } else {
        filterWidgets.insert(
          0,
          PostListFilterItem(
            value: element.categoryCode,
            index: index++,
            isActive: true,
            name: element.korean,
          ),
        );
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRect(
            child: AnimatedSize(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                constraints: BoxConstraints(
                  maxHeight: postListFilterState.isExpanded
                      ? double.infinity
                      : 42, // 접었을 때 최대 높이 제한
                ),
                child: Wrap(
                  direction: Axis.horizontal,
                  // 나열 방향
                  alignment: WrapAlignment.start,
                  // 정렬 방식
                  spacing: 12,
                  // 좌우 간격
                  runSpacing: 12,
                  // 상하 간격
                  children: filterWidgets,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: GestureDetector(
            onTap: () {
              ref.read(postListFilterViewModelProvider.notifier).onToggleFilterExpansion();
            },
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.gray90),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(postListFilterState.isExpanded
                  ? Icons.keyboard_arrow_up_sharp
                  : Icons.keyboard_arrow_down_sharp),
            ),
          ),
        ),
      ],
    );
  }
}
