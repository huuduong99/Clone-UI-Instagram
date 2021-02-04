import 'package:clone_ui_instagram/page/home_page.dart';
import 'package:clone_ui_instagram/page/notification_page.dart';
import 'package:clone_ui_instagram/page/photo_page.dart';
import 'package:clone_ui_instagram/page/profile_page.dart';
import 'package:clone_ui_instagram/page/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: InstagramApp(),
    //home: token != null ? HomeTPosScreen() : LoginTPosScreen(),
  ));
}

class InstagramApp extends StatefulWidget {
  @override
  _InstagramAppState createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    PhotoPage(),
    NotificationPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavigationBar() {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.search_rounded,
              color: Colors.black,
              size: 28,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
            activeIcon: Icon(Icons.camera_alt, color: Colors.black, size: 25),
            label: 'Photo',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.favorite, color: Colors.black, size: 25),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.person, color: Colors.black, size: 25),
            label: 'User',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: _buildNavigationBar(),
    );
  }
}
