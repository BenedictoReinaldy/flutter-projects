// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:heroes_project/data.dart';

class HeroDetails extends StatelessWidget {
  const HeroDetails({
    super.key,
    required this.pahlawan,
  });

  final Pahlawan pahlawan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.amber,
        title: const Text(
          'Detail Pahlawan',
          style: TextStyle(
            fontFamily: 'Amsterdam',
            fontSize: 24,
            letterSpacing: 4,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    pahlawan.name,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Hero(
                    tag: pahlawan.image,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.red,
                            Colors.white,
                          ],
                        ),
                        image: DecorationImage(
                          image: AssetImage(pahlawan.image),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis id nunc malesuada tristique. Nulla facilisi. Vivamus quis dapibus sapien. Duis volutpat felis a lectus ultricies, ac consectetur lacus fringilla. Suspendisse potenti. Fusce at dictum libero, nec bibendum elit. Integer nec turpis vel lacus cursus cursus. Nam ut orci nec arcu tincidunt aliquet id a erat. Proin mollis malesuada nisi, ac rhoncus sapien venenatis at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis id nunc malesuada tristique. Nulla facilisi. Vivamus quis dapibus sapien. Duis volutpat felis a lectus ultricies, ac consectetur lacus fringilla. Suspendisse potenti. Fusce at dictum libero, nec bibendum elit. Integer nec turpis vel lacus cursus cursus. Nam ut orci nec arcu tincidunt aliquet id a erat. Proin mollis malesuada nisi, ac rhoncus sapien venenatis at. Integer nec turpis vel lacus cursus cursus. Nam ut orci nec arcu tincidunt aliquet id a erat. Proin mollis malesuada nisi, ac rhoncus sapien venenatis at. Integer nec turpis vel lacus cursus cursus. Nam ut orci nec arcu tincidunt aliquet id a erat. Proin mollis malesuada nisi, ac rhoncus sapien venenatis at. Integer nec turpis vel lacus cursus cursus. Nam ut orci nec arcu tincidunt aliquet id a erat. Proin mollis malesuada nisi, ac rhoncus sapien venenatis at.',
                    textAlign: TextAlign.justify,
                    maxLines: 17,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SizedBox(
                // color: Colors.grey[500],
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.bookmark_outline,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Bookmark',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
