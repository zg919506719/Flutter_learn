import 'package:flutter/material.dart';

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
      body: Center(
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
          Text("$inputData")
        ],
      )),
    );
  }
}
