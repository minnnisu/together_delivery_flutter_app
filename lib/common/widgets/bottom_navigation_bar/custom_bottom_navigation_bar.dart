import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

import '../../../main/view_model/main_view_model.dart';
import 'custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mainViewState = ref.watch(mainViewModelProvider);
    var textTheme = Theme.of(context).textTheme;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        CustomBottomNavigationBarItem.create(
          activeIconPath: 'assets/icon/material-symbols--home.svg',
          inactiveIconPath: 'assets/icon/material-symbols--home-outline.svg',
          label: '홈',
        ),
        CustomBottomNavigationBarItem.create(
          activeIconPath: 'assets/icon/majesticons--chat.svg',
          inactiveIconPath: 'assets/icon/majesticons--chat-line.svg',
          label: '채팅',
        ),
        CustomBottomNavigationBarItem.create(
          activeIconPath: 'assets/icon/material-symbols--notifications-sharp.svg',
          inactiveIconPath: 'assets/icon/material-symbols--notifications-outline.svg',
          label: '알림',
        ),
        CustomBottomNavigationBarItem.create(
          activeIconPath: 'assets/icon/material-symbols--account-circle.svg',
          inactiveIconPath: 'assets/icon/material-symbols--account-circle-outline.svg',
          label: '계정',
        ),
      ],
      backgroundColor: AppColor.white,
      currentIndex: mainViewState.selectedViewIndex,
      selectedFontSize: 12,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      selectedItemColor: AppColor.primaryColor,
      unselectedFontSize: 12,
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedItemColor: AppColor.gray60,

      onTap: (index) => ref.read(mainViewModelProvider.notifier).onChangeIndex(index),
    );
  }
}

// majesticons--chat.svg
// majesticons--chat-line.svg
// material-symbols--account-circle.svg
// material-symbols--account-circle-outline.svg
// material-symbols--home.svg
// material-symbols--home-outline.svg
// material-symbols--notifications-outline.svg
// material-symbols--notifications-sharp.svg