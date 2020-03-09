import 'package:flutter/material.dart';

import '../../pages/tabs/BottomBar.dart';

class Replace2RouteTest extends StatefulWidget {
  final arguments;
  Replace2RouteTest({this.arguments});

  @override
  _Replace2RouteTestState createState() => _Replace2RouteTestState();
}

class _Replace2RouteTestState extends State<Replace2RouteTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('替换路由测试: ${widget.arguments['title']}'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('确定'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              // 返回到路由初始列表页
              // Navigator.of(context).pop()

              // 返回BottomBar页
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => BottomBar(index: 0)),
                  (route) => route == null)
            },
          ),
        ],
      ),
    );
  }
}
