import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

class MyList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // return _MyList(items: List<String>.generate(300, (index) => "$index行"));
    return _MyGrid();
  }
}

class _MyList extends State {
  List<String> items;

  _MyList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text('${items[index]}'),
          );
        },
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return Container(
            constraints: BoxConstraints.tight(Size.fromHeight(1.0)),
            color: Colors.black38,
          );
        },
      ),
    );
  }
}

class _MyGrid extends State {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          child: Icon(Icons.settings),
        );
      },
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
    );
  }
}
