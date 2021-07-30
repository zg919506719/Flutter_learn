import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class MyLifecycle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLifecycleState();
  }
}

///混合mixins（with)
/// a、混合对象是一个类
/// b、一个类可以混合多个类
class MyLifecycleState extends State<MyLifecycle> with WidgetsBindingObserver {
  AppLifecycleState myState=AppLifecycleState.inactive;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state.toString());
    setState(() {
      myState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Text("data $myState");
  }
}
