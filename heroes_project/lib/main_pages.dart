import 'package:flutter/material.dart';
import 'package:heroes_project/pages/home_page.dart';
import 'package:heroes_project/pages/search_page.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});
  @override
  State<MainPages> createState() => _MainPages();
}

class _MainPages extends State<MainPages> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
