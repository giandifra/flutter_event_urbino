import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 21.0,
        width: 21.0,
        child: FlareActor("assets/flare/Favorite.flr",
            shouldClip: false,
            animation: isFavourite ? "Favorite" : "Unfavorite"),
      ),
    );
  }
}