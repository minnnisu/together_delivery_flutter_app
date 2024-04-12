import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/view/postListScreen.dart';
import 'package:together_delivery_app/user/view/user_info_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<String> appBarTitle = [
  "게시글",
  "내정보",
];

class _MainScreenState extends State<MainScreen> {
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

// class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
//   int selectedIndex;
//
//   MyAppBar({super.key, required this.selectedIndex});
//
//   final double header_height = 60; // 헤더 높이
//
//   @override
//   State<MyAppBar> createState() => _MyAppBarState();
//
//   @override
//   Size get preferredSize => Size.fromHeight(header_height);
// }
//
// class _MyAppBarState extends State<MyAppBar> {
//
//   List<Text> appBarTitle = [
//     Text("배달 게시물"),
//     Text("마이페이지"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             appBarTitle[widget.selectedIndex],
//             Image.asset(
//               "assets/search-icon.png",
//               width: 25,
//               height: 25,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
