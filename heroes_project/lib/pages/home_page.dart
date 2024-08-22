import 'package:flutter/material.dart';
import 'package:heroes_project/data.dart';
import 'package:heroes_project/widget/items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Pahlawan> pahlawan = allData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.amber,
        title: const Text(
          'Heroes App',
          style: TextStyle(
            fontFamily: 'Amsterdam',
            fontSize: 30,
            letterSpacing: 4,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.bookmark_border_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.55,
          ),
          itemBuilder: (context, index) {
            return ItemsWidget(pahlawan: allData[index]);
          },
          itemCount: pahlawan.length,
        ),
      ),
    );
  }
}
