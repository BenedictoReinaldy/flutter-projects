import 'package:flutter/material.dart';

class SampleColumnrow extends StatelessWidget {
  const SampleColumnrow({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _box(),
        _box(),
        _box(),
        _box(),
        _box(),
      ],
    );
  }

  Widget _box() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.amber, border: Border.all()),
    );
  }
}
