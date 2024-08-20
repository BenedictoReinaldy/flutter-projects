import 'package:flutter/material.dart';

class UpdatePages extends StatelessWidget {
  const UpdatePages({super.key});

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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
          ListTile(
            tileColor: Colors.amber,
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/300',
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
        ],
      ),
    );
  }
}
