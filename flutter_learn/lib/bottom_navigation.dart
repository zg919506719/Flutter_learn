import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State {
  int _selectIndex = 1;
  static const List<Widget> _widget = <Widget>[
    Text('Index 0 首页'),
    Text('Index 1 :通讯录'),
    Text('Index 2 :设置')
  ];

  void setIndex(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: ('热点')),
              Tab(
                text: '体育',
              )
            ],
            onTap: setIndex,
          ),
        ),
        body: Center(
          child: _widget.elementAt(_selectIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page), label: '通讯录')
          ],
          currentIndex: _selectIndex,
          selectedItemColor: Colors.amber,
          onTap: setIndex,
        ),
      ),
      initialIndex: _selectIndex,
    );
  }
}