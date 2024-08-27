// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_clone/widget/post.dart';
import 'package:ig_clone/widget/story.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List userdata = [
    '_thisisben',
    'galery_67',
    'bimaarya',
    'hnnapra_',
    'nailong_',
    'haa_ayomamanu',
    'pendakilawas',
    'mountainerring_877',
    '_jeanny13',
    'janeeeee_',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/icons/ig_appbar.svg',
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              'assets/icons/love_icon.svg',
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Color.fromARGB(255, 255, 17, 0),
                ),
                SvgPicture.asset(
                  'assets/icons/message_icon.svg',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: userdata.length,
              itemBuilder: (context, index) {
                return Story(
                  name: userdata[index],
                  isMe: index == 0 ? true : false,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Post(name: userdata[index]);
              },
              itemCount: userdata.length,
            ),
          ),
        ],
      ),
    );
  }
}
