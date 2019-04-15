import 'package:flutter/material.dart';
import 'package:flutter_event_urbino/flare_example/orso.dart';
import 'package:flutter_event_urbino/instagram_clone/instagram.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Event Urbino 2019"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => InstagramClone()));
            },
            child: Container(

              height: 300.0,
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "Instagram Clone Example",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => Orso(),
                ),
              );
            },
            child: Container(
              height: 300.0,
              child: Card(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Flare Animation Example",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
