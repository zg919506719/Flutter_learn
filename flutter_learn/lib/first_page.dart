
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/routes.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: TextButton(
          child: Text('跳转到第二页'),
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
            Navigator.pushNamed(context, SECOND_PAGE);
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: TextButton(
          child: Text('回到上一页'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}