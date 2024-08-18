import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Text"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            margin: const EdgeInsets.all(20),
            child: Text(
              "Ini adalah isi teks dari container",
              textAlign: TextAlign.center,
              textScaler: const TextScaler.linear(1),
              style: TextStyle(
                  color: Colors.purple[800],
                  fontSize: 23,
                  fontFamily: 'Amsterdam',
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.white,
                  letterSpacing: 6),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            margin: const EdgeInsets.all(20),
            child: const Text("Ini adalah isi teks dari container"),
          ),
        ],
      ),
    );
  }
}
