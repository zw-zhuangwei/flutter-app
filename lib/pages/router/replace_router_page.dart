import 'package:flutter/material.dart';

class ReplaceRoutePage extends StatefulWidget {
  final arguments;
  ReplaceRoutePage({this.arguments});
  @override
  _ReplaceRoutePageState createState() => _ReplaceRoutePageState();
}

class _ReplaceRoutePageState extends State<ReplaceRoutePage> {
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
                '/replace2_router_page',
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
