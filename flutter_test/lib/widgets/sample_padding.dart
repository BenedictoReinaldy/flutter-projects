import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamplePadding extends StatelessWidget {
  const SamplePadding({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Author anda adalah Benedicto',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SvgPicture.asset(
          'assets/icons/ig_logo.svg',
          color: Colors.amber,
        ),
        SvgPicture.asset('assets/icons/ig_home.svg'),
        SvgPicture.asset('assets/icons/ig_favorite.svg'),
        const Text('data')
      ],
    );
  }
}
