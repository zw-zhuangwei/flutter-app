import 'package:flutter/material.dart';

class HomeMinePage extends StatefulWidget {
  @override
  _HomeMinePageState createState() => _HomeMinePageState();
}

class _HomeMinePageState extends State<HomeMinePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('登录'),
              onPressed: () => {
                Navigator.pushNamed(context, '/login_account_page'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
