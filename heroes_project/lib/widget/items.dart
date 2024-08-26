// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:heroes_project/data.dart';
import 'package:heroes_project/widget/hero_details.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: pahlawan.image,
                child: Image.asset(
                  height: 200,
                  pahlawan.image,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
                child: Text(
                  pahlawan.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  textAlign: TextAlign.center,
                  pahlawan.desc,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
