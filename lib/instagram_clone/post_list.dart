import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/instagram_clone/post_item.dart';

class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return PostItem();
      },
    );
  }
}