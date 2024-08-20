import 'package:flutter/material.dart';

class PahlawanDaerah extends StatelessWidget {
  const PahlawanDaerah({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 25),
                child: Text(
                  'Pahlawan Daerah',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16, top: 25),
                child: Icon(
                  Icons.chevron_right_outlined,
                  size: 26,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/diponegoro.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Diponegoro'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/kartini.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Kartini'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/maria.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Maria Tiahahu'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/sutomo.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Bung Tomo'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/dewantara.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('KH Dewantara'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/dien.jpeg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Cut Nyak Dien'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/soedirman.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Soedirman'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/supratman.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('WR Supratman'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/yamin.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('Moh. Yamin'),
                          )
                        ],
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
