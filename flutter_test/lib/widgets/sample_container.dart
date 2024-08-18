import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.only(top: 30, left: 30),
      height: 300,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(width: 4, color: Colors.blue),
      ),
      child: const Text("Ini adalah teks di dalam kontainer"),
    );
  }
}
