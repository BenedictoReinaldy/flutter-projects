import 'package:flutter/material.dart';
import 'package:heroes_project/widget/proklamator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Heroes App',
          style: TextStyle(
            fontFamily: 'Amsterdam',
            fontSize: 38,
            letterSpacing: 4,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.bookmark_border,
              size: 30,
            ),
          )
        ],
      ),
      body: const Proklamator(),
    );
  }
}
