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
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 25,
            ),
            child: Text(
              'Bapak Proklamator',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 160,
                      height: 200,
                      child: Image.asset(
                        'assets/images/soekarno.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        'Ir.Soekarno',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 160,
                      child: Image.asset(
                        'assets/images/hatta.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        'Moh. Hatta',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
