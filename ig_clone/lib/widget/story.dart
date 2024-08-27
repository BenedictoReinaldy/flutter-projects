// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.name,
    required this.isMe,
  }) : super(key: key);
  final String name;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 41,
                  backgroundColor: isMe ? Colors.black : Colors.red,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200?u=$name',
                    ),
                  ),
                ),
                if (isMe)
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        size: 18,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
