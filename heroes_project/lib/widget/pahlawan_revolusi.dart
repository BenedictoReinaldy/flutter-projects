import 'package:flutter/material.dart';

class PahlawanRevolusi extends StatelessWidget {
  const PahlawanRevolusi({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 25, 16, 10),
              child: Text(
                'Pahlawan Revolusi',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        Text('Hello World')
      ],
    );
  }
}
