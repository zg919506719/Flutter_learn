import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/first_page.dart';

final FIRST_PAGE='/first';
final SECOND_PAGE='/second';
var routes=<String,WidgetBuilder>{
  FIRST_PAGE:(BuildContext context)=>FirstPage(),
  SECOND_PAGE:(BuildContext context)=>SecondPage(),
};