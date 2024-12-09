import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class CustomBottomNavigationBarItem {
  static BottomNavigationBarItem create({
    required String activeIconPath,
    required String inactiveIconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: SvgPicture.asset(
          activeIconPath,
          height: 28, // 아이콘 크기 설정
          colorFilter: ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: SvgPicture.asset(
          inactiveIconPath,
          height: 28, // 아이콘 크기 설정
          colorFilter: ColorFilter.mode(AppColor.gray60, BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }
}
