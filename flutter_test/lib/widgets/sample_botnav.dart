import 'package:flutter/material.dart';
import 'package:heroes_app/widgets/sample_column_row.dart';
import 'package:heroes_app/widgets/sample_padding.dart';

class SampleBotNav extends StatefulWidget {
  const SampleBotNav({super.key});
  @override
  State<SampleBotNav> createState() => _SampleBotNavState();
}

class _SampleBotNavState extends State<SampleBotNav> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const SamplePadding(),
    const SampleColumnrow(),
    const Text(
      'Favorite',
      style: TextStyle(
        fontSize: 30,
      ),
    ),
    const Text(
      'Settings',
      style: TextStyle(
        fontSize: 30,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Bottom Navigation'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[400],
        selectedItemColor: Colors.purple,
        selectedFontSize: 23,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
