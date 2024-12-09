import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:together_delivery_app/user/view/widget/account_deletion_button.dart';
import 'package:together_delivery_app/user/view/widget/logout_button.dart';
import 'package:together_delivery_app/user/view/widget/my_account_info.dart';
import 'package:together_delivery_app/user/view/widget/my_account_profile.dart';
import 'package:together_delivery_app/user/view/widget/my_account_section_container.dart';
import 'package:together_delivery_app/user/view/widget/my_info_change.dart';
import 'package:together_delivery_app/user/view_model/my_account_load_view_model.dart';

class MyAccountView extends ConsumerWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(myAccountLoadViewModelProvider);

    return Scaffold(
      body: watch.when(
        data: (data) => ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            MyAccountProfile(
              username: data.name,
              nickname: data.nickname,
              onChangeUserInfo: () {},
            ),
            SizedBox(
              height: 24,
            ),
            MyAccountSectionContainer(
                sectionName: "내 정보",
                body: MyAccountInfo(
                  username: data.username,
                  email: data.email,
                  college: data.college,
                )),
            SizedBox(
              height: 24,
            ),
            MyAccountSectionContainer(
                sectionName: "내정보 수정", body: MyInfoChange()),
            SizedBox(
              height: 24,
            ),
            LogoutButton(),
            SizedBox(
              height: 24,
            ),
            AccountDeletionButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
        error: (error, stackTrace) => Text("오류가 발생하였습니다."),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
