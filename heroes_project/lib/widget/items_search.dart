// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:heroes_project/data.dart';
import 'package:heroes_project/widget/hero_details.dart';

class ItemsSearch extends StatelessWidget {
  const ItemsSearch({
    super.key,
    required this.pahlawan,
  });

  final Pahlawan pahlawan;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HeroDetails(
                pahlawan: pahlawan,
              );
            },
          ),
        );
      },
      child: ListTile(
        // tileColor: Colors.amber,
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(pahlawan.image),
        ),
        title: Text(pahlawan.name),
        subtitle: Text(pahlawan.desc),
      ),
    );
  }
}
