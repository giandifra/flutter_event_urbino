import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Orso extends StatefulWidget {
  @override
  _OrsoState createState() => _OrsoState();
}

class _OrsoState extends State<Orso> {
  String animation = "success";

  changeAnimation(String animation) {
    setState(() {
      this.animation = animation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flare Animation Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 500,
            height: 500,
            child: FlareActor(
              "assets/flare/orsacchiotto.flr",
              animation: animation,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("success"),
                onPressed: () => changeAnimation("success"),
              ),
              RaisedButton(
                child: Text("idle"),
                onPressed: () => changeAnimation("idle"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("fail"),
                onPressed: () => changeAnimation("fail"),
              ),
              RaisedButton(
                child: Text("test"),
                onPressed: () => changeAnimation("test"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
