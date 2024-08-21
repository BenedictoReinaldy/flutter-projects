import 'package:flutter/material.dart';

class UpdatePages extends StatelessWidget {
  UpdatePages({super.key});

  final List recent = [
    {
      'photoUrl': 'https://i.pravatar.cc/300?img=1',
      'name': 'Noah Sanders',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=2',
      'name': 'Emily Foster',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=3',
      'name': 'Lucas Bailey',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=4',
      'name': 'Grace Porter',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=5',
      'name': 'Elijah Murphy',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=6',
      'name': 'Marselino',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=7',
      'name': 'Yessi Hanna',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=8',
      'name': 'Benedicta',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=9',
      'name': 'Kenny',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=10',
      'name': 'Harper Scott',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Updates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
            child: Text(
              'Status',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/300?img=1',
                  ),
                ),
                CircleAvatar(
                  radius: 11,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Yesterday'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'Recently Updates',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      recent[index]['photoUrl'],
                    ),
                  ),
                  title: Text(recent[index]['name']),
                  subtitle: const Text('Yesterday'),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 0,
                );
              },
              itemCount: recent.length,
            ),
          ),
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Viewed Updates',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
