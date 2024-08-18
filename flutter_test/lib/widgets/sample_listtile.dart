import 'package:flutter/material.dart';

class SampleListtile extends StatelessWidget {
  SampleListtile({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  final List data = [
    {
      'photoUrl': 'https://picsum.photos/200?img=1',
      'name': 'Tono',
      'address': 'Surabaya',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=2',
      'name': 'Dono',
      'address': 'Petemon',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=3',
      'name': 'Adi',
      'address': 'Bulak Banteng',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=4',
      'name': 'Doni',
      'address': 'Medan',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=5',
      'name': 'Sukijan',
      'address': 'Gayungan',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar List Tile dalam List View'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
