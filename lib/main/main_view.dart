import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/routes/routes.dart';
import 'package:together_delivery_app/user/view/my_account_view.dart';

import '../post/post_list/view/post_list_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

List<AppBar?> appBar = [
  AppBar(
    title: Text(
      "게시글",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
  ),
  null
];

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PostListView(),
    MyAccountView(),
    // UserInfoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar[_selectedIndex],
      body: Container(
        width: double.infinity,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              shape: CircleBorder(),
              elevation: 0,
              backgroundColor: Color(0xffdedddd),
              onPressed: () =>
                  Navigator.pushNamed(context, RoutesName.newPostCreate),
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
