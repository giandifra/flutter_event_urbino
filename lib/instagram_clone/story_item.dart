import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/instagram_clone/fake_data.dart';

class StoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final random = Random().nextInt(5);
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 25.0,
            //backgroundColor: Colors.accents[Random().nextInt(14)],
            backgroundImage: NetworkImage(avatars[random]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(names[random]),
          ),
        ],
      ),
    );
  }
}
