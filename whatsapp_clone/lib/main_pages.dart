import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_pages.dart';
import 'package:whatsapp_clone/pages/update_pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    ChatPages(),
    const UpdatePages(),
    const Center(
      child: Text(
        'Communities Page',
      ),
    ),
    const Center(
      child: Text(
        'Calls Page',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.chat : Icons.chat_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 1 ? Icons.update : Icons.update_outlined),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 2 ? Icons.people : Icons.people_alt_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 3 ? Icons.phone : Icons.phone_outlined),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
