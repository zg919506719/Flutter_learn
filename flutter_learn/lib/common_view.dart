import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State {
  var inputData;
  var errorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
            child: Row(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: TextField(
                //装饰
                decoration: new InputDecoration(
                    hintText: "AJSDGAJDGJA", errorText: "$errorData"),
                onSubmitted: (String text) {
                  print(text);
                  setState(() {
                    errorData = text;
                  });
                },
                onChanged: (String text) {
                  setState(() {
                    inputData = text;
                  });
                },
              ),
            ),
            TextButton(
              onPressed: () {
                var timer = Timer.periodic(Duration(seconds: 3), (timer) {
                  Fluttertoast.showToast(msg: "toast yi");
                  //关闭当前页面
                  Navigator.pop(context);
                  timer.cancel();
                });
              },
              child: new Text("$inputData"),
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        var alertDialog = AlertDialog(
                          title: Text("tishi"),
                          content: Text("sure delete"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("确定"),
                            )
                          ],
                        );
                        return alertDialog;
                      });
                },
                child: new Text("showAlertDialog")),
          ],
        )),
        CircularProgressIndicator(),

      ],
    ));
  }
}
