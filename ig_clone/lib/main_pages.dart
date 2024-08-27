// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_clone/pages/home_page.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_selected_icon.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search_icon.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/new_post_icon.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/reels_icon.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Reels',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/200',
                ),
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
