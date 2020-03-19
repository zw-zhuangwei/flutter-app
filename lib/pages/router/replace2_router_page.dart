import 'package:flutter/material.dart';

import '../../widget/BottomBar.dart';

class Replace2RoutePage extends StatefulWidget {
  final arguments;
  Replace2RoutePage({this.arguments});

  @override
  _Replace2RoutePageState createState() => _Replace2RoutePageState();
}

class _Replace2RoutePageState extends State<Replace2RoutePage> {
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
                  MaterialPageRoute(builder: (context) => BottomBar(index: 1)),
                  (route) => route == null)
            },
          ),
        ],
      ),
    );
  }
}
