import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/instagram_clone/fake_data.dart';
import 'package:flutter_event_urbino/instagram_clone/favorite_button.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int random = Random().nextInt(5);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(avatars[random]),
                ),
              ),
              Text(names[random]),
              Expanded(
                child: Container(),
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Container(
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: "https://picsum.photos/200/300?image=${Random().nextInt(100)}",
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: FavouriteButton(),
              ),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: null,
              ),
              Spacer(),
              IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "${Random().nextInt(100000)} likes",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}