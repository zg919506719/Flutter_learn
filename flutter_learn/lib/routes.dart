import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/bottom_navigation.dart';
import 'package:flutter_learn/first_page.dart';

import 'main.dart';

final FIRST_PAGE='/first';
final SECOND_PAGE='/second';
final HOME_PAGE='/home';
const BOTTOM_NAVIGATION='/bottom_navigation';
var routes=<String,WidgetBuilder>{
  FIRST_PAGE:(BuildContext context)=>FirstPage(),
  SECOND_PAGE:(BuildContext context)=>SecondPage(),
  HOME_PAGE:(BuildContext context)=>MyHomePage(key: Key('123'), title: '321',),
  BOTTOM_NAVIGATION:(BuildContext context)=>BottomNavigation(),
};