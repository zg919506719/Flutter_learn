import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            child:  Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: TabBar(
                        onTap: (int i){

                        },
                        tabs: [
                          Tab(
                            child: Text("tab1"),
                          ),
                          Tab(
                            child: Text("tab2"),
                          )
                        ]),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child:                   TabBarView(children: [
                      Center(
                        child: Text("123"),
                      ),
                      Text("321")
                    ])
                  )
                ],
              ),
            ),
          )

        ));
  }
}
