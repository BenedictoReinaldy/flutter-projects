import 'package:flutter/material.dart';

class CallsPages extends StatelessWidget {
  CallsPages({super.key});

  final List calls = [
    {
      'photoUrl': 'https://i.pravatar.cc/300?img=1',
      'name': 'Noah Sanders',
      'timestamp': '17 Agustus, 15.54 ',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=2',
      'name': 'Emily Foster',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=3',
      'name': 'Lucas Bailey',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=4',
      'name': 'Grace Porter',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=5',
      'name': 'Elijah Murphy',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=6',
      'name': 'Marselino',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=7',
      'name': 'Yessi Hanna',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=8',
      'name': 'Benedicta',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=9',
      'name': 'Kenny',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=10',
      'name': 'Harper Scott',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=11',
      'name': 'Ethan Hill',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=12',
      'name': 'Sophia Bennett',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=13',
      'name': 'Mason Reed',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=14',
      'name': 'Olivia Brooks',
      'timestamp': '17 Agustus, 15.54',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=15',
      'name': 'Logan Cooper',
      'timestamp': '17 Agustus, 15.54',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calls',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Text(
                'Favorites',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.favorite_border_rounded,
                  ),
                ),
                title: Text(
                  'Add Favorites',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Text(
                'Recents',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(calls[index]['photoUrl']),
                    ),
                    title: Text(
                      calls[index]['name'],
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(
                          Icons.call_missed,
                          color: Colors.red,
                          size: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(calls[index]['timestamp']),
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.call),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                  );
                },
                itemCount: calls.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
