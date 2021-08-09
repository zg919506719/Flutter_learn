
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyTabController();
  }
}

class _MyTabController extends State with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController=TabController(vsync: this,length: 4,initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义TabController'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: '热点',
            ),
            Tab(
              text: '热点1',
            ),
            Tab(
              text: '热点2',
            ),
            Tab(
              text: '热点3',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text("热点"),
          ),
          Center(
            child: Text("热点1"),
          ),
          Center(
            child: Text("热点2"),
          ),
          Center(
            child: Text("热点3"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}