import 'package:flutter/material.dart';

class Proklamator extends StatelessWidget {
  const Proklamator({super.key});
  // const Proklamator({
  //   Key? key,
  //   required this.name,
  // }) : super(key: key);

  // final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.pink,
        ),
      ],
    );
  }
}
