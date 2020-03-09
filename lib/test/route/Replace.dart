import 'package:flutter/material.dart';

class ReplaceRouteTest extends StatefulWidget {
  final arguments;
  ReplaceRouteTest({this.arguments});
  @override
  _ReplaceRouteTestState createState() => _ReplaceRouteTestState();
}

class _ReplaceRouteTestState extends State<ReplaceRouteTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('替换路由测试: ${widget.arguments['title']}'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('---${widget.arguments}---'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {print(111)},
          ),
          RaisedButton(
            child: Text('下一步'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.of(context).pushReplacementNamed(
                '/replace2RouteTest',
                arguments: {
                  'title': 'replace2',
                },
              )
            },
          ),
        ],
      ),
    );
  }
}
