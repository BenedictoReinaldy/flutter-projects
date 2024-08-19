import 'package:flutter/material.dart';
import 'package:heroes_project/widget/pahlawan_daerah.dart';
import 'package:heroes_project/widget/pahlawan_revolusi.dart';
import 'package:heroes_project/widget/proklamator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List pahlawandaerah = [
    'Cut Nyak Dien',
    'WR Supratman',
    'Maria Tiahahu',
    'Imam Bonjol',
    'Diponegoro',
    'RA Kartini',
    'Pattimura',
    'Moh. Yamin',
    'Agus Salim',
  ];

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
      body: Column(
        children: [
          const Proklamator(),
          const Divider(
            height: 1,
          ),
          const PahlawanDaerah(),
          const Divider(
            height: 1,
          ),
          PahlawanRevolusi(),
        ],
      ),
    );
  }
}
