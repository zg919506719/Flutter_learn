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
    return new SizedBox(
      height: 200,
      child: new ListView(children: [
        new TextButton(
            onPressed: () {
              print("List ");
            },
            child: new Row(
              children: [
                new Image(
                    image: new AssetImage("asset/images/ic_launcher.png")),
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
      ]),
    );
  }
}

class RecycleView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecycleState();
  }
}

class RecycleState extends State {
  List<String> Test = [];
  var des;

  @override
  void initState() {
    // Test.add(adapter(0));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Row(children: [
      TextButton(
          onPressed: () {
            setState(() {
              Test.add("value");
            });
          },
          child: new Text("data")),
      new SizedBox(
          height: 200,
          width: 200,
          child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              print("$index+index");
              //手势
              return new GestureDetector(
                onTap: () {
                  setState(() {
                    Test.add("adapter(positon)");
                  });
                },
                child: Text("$index"),
              );
              ;
            },
            itemCount: Test.length,
          ))
    ]));
  }
}
