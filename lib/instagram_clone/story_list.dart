import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/instagram_clone/story_item.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return StoryItem();
        },
      ),
    );
  }
}