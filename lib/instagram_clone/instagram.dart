import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/instagram_clone/post_list.dart';
import 'package:flutter_event_urbino/instagram_clone/story_list.dart';

class InstagramClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.camera,
          color: Colors.black,
        ),
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.live_tv, color: Colors.black), onPressed: null),
          IconButton(
              icon: Icon(Icons.send, color: Colors.black), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          StoriesList(),
          PostsList(),
        ],
      ),
    );
  }
}
