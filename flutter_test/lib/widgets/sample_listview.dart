import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  const SampleListview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar List View'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        reverse: true,
        children: [
          Container(
            color: Colors.purple,
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[400],
            height: 100,
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[400],
            height: 100,
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[400],
            height: 100,
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
          ),
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Container(
            color: Colors.purple[300],
            height: 100,
          ),
          Container(
            color: Colors.purple[400],
            height: 100,
          ),
        ],
      ),
    );
  }
}
