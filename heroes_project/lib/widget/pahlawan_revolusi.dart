import 'package:flutter/material.dart';

class PahlawanRevolusi extends StatelessWidget {
  PahlawanRevolusi({super.key});

  final List data = [
    {
      'photoUrl': 'https://picsum.photos/200?img=1',
      'name': 'Tono',
      'desc': 'Surabaya',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=2',
      'name': 'Dono',
      'desc': 'Petemon',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=3',
      'name': 'Adi',
      'desc': 'Bulak Banteng',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=4',
      'name': 'Doni',
      'desc': 'Medan',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=5',
      'name': 'Sukijan',
      'desc': 'Gayungan',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=6',
      'name': 'Sukinem',
      'desc': 'Transicon',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=7',
      'name': 'Sukma',
      'desc': 'Manukan',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16, 25, 16, 10),
                child: Text(
                  'Pahlawan Revolusi',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 200,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(data[index]['photoUrl']),
                    title: Text(data[index]['name']),
                    subtitle: Text(data[index]['desc']),
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                    color: Colors.black,
                  );
                },
                itemCount: data.length),
          ),
        ),
      ],
    );
  }
}
