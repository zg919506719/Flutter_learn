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
                Fluttertoast.showToast(msg: "toast yi");
              },
              child: new Text("$inputData"),
            )
          ],
        )),
        CircularProgressIndicator()
      ],
    ));
  }
}
