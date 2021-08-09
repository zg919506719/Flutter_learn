import 'package:flutter/material.dart';

get myDrawer=>Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      UserAccountsDrawerHeader(accountName: Text('六舒服'), accountEmail: Text('hello.com')
                                ,currentAccountPicture: CircleAvatar(
          child: Text('L'),
        ),),
      ListTile(
        leading: Icon(Icons.local_post_office),
        title: Text('邮件'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('设置'),
      )
    ],
  ),
);