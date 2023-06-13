
import 'package:flutter/material.dart';
import 'package:rough_work/view/screens/booksscreen.dart';
import 'package:rough_work/view/screens/settings.dart';

import 'dashboard.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {


  int _currentIndex = 0;

  static const List<Widget> _screens = [
    DashboardScreen(),
    BooksScreen(),
    SettingsScreen(),
  ];

  void _onNavBarItemTapped(index) {
    setState(() {
      _currentIndex = index;

    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _screens.elementAt(_currentIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: 'Books'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: _onNavBarItemTapped,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.white,
      ),

    );
  }
}
