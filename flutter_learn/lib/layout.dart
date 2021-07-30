import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Linelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Text("horiz One"),
        new Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          new Text("vertical one"),
          new Text("vertical two"),
        ]),
      ],
    ));
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(children: [
      new TextButton(
          onPressed: () {
            print("List ");
          },
          child: new Row(
            children: [
              new Image(image: new AssetImage("asset/images/ic_launcher.png")),
              new Text("data")
            ],
          )),
      new Text("List 1"),
      new Text("List 1"),
      new Text("List 1"),
      new Text("List 1"),
      new Text("List 1"),
      new Text("List 1"),
      new Text("List 1"),
    ]);
  }
}
