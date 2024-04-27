import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/view/postList/postListScreen.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/view/user_info_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

List<String> appBarTitle = [
  "게시글",
  "내정보",
];

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PostListScreen(),
    UserInfoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(ModalRoute.of(context)!.settings.arguments is UserModel) {
      UserModel userModel = ModalRoute.of(context)!.settings.arguments as UserModel;

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
              onPressed: () => Navigator.pushNamed(context, "/newPost"),
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '계정',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}