import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat_list/view/chat_list_view.dart';
import 'package:together_delivery_app/main/model/main_view_state.dart';
import 'package:together_delivery_app/notification/view/notification_view.dart';

import '../../post/post_list/view/post_list_view.dart';
import '../../user/view/my_account_view.dart';

final mainViewModelProvider =
    StateNotifierProvider<MainViewModel, MainViewState>((ref) {
  return MainViewModel(MainViewState.init());
});

class MainViewModel extends StateNotifier<MainViewState> {
  final _views = <Widget>[
    PostListView(),
    ChatListView(),
    NotificationView(),
    MyAccountView(),
    // UserInfoScreen(),
  ];

  MainViewModel(super.state);

  void onChangeIndex(int index) {
    state = state.copyWith(selectedViewIndex: index);
  }

  List<Widget> getViews() {
    return _views;
  }
}
