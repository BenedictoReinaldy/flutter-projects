import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Image Widget"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(border: Border.all()),
            child: Image.asset(
              'assets/images/dog.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(border: Border.all()),
            child: Image.asset(
              'assets/images/snow.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/moon.jpg'),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/dog.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/snow.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/moon.jpg'),
                      fit: BoxFit.fill),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
