import 'package:flutter/material.dart';

class SamplePadding extends StatelessWidget {
  const SamplePadding({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Author anda adalah Benedicto',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
