import 'package:flutter/material.dart';

class AppbarSysWidget extends StatelessWidget {
  const AppbarSysWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppbarSysWidget"),
        // backgroundColor: Colors.red,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('settings');
            },
          )
        ],
      ),
      body: Text('1111'),
    );
  }
}
