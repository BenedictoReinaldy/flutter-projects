import 'package:flutter/material.dart';

class CommunitiesPages extends StatelessWidget {
  const CommunitiesPages({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const Icon(
                      Icons.people_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              title: const Text(
                'New Communities',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Icon(
                    Icons.people_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Wisata MDPL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
              ),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Icon(
                    Icons.announcement_outlined,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Announcement',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text(
                  'Welcome to the community',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: const Text(
                  '17/09/23',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
              ),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Icon(
                    Icons.announcement_outlined,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  '3339 MDPL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text(
                  'Leader: ayo gaskan 9-10 september',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      '21/08/24',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.chevron_right_outlined),
                  ),
                  Text('View All')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
