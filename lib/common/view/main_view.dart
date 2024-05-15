import 'package:flutter/material.dart';
import 'package:together_delivery_app/chat/view/chat_room_list_screen.dart';
import 'package:together_delivery_app/post/view/post_list/post_list_screen.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/view/user_info_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

List<String> appBarTitle = [
  "게시글",
  "채팅",
  "내정보",
];

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PostListScreen(),
    ChatRoomListScreen(),
    UserInfoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments is UserModel) {
      UserModel userModel =
          ModalRoute.of(context)!.settings.arguments as UserModel;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle[_selectedIndex],
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
        shape: CircleBorder(),
              elevation: 0,
              backgroundColor: Color(0xffdedddd),
              onPressed: () => Navigator.pushNamed(context, "/newPost"),
              child: Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: '계정',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: Color(0xff3d3d3d),
        unselectedFontSize: 12,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedItemColor: Color(0xffa6a6a6),
        onTap: _onItemTapped,
      ),
    );
  }
}
