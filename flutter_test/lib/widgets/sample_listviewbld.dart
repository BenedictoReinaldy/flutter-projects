import 'package:flutter/material.dart';

class SampleListViewBuilder extends StatelessWidget {
  SampleListViewBuilder({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar List View Builder'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: SizedBox(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return CircleAvatar(
              radius: 60,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://picsum.photos/200/300?img=$index'),
              ),
            );
          },
          itemCount: colorCodes.length,
        ),
      ),
    );
  }
}
