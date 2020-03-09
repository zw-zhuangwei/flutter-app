import 'package:flutter/material.dart';
import './General.dart';

class IndexRouteTest extends StatelessWidget {
  String title;
  final arguments;
  IndexRouteTest({
    this.title = '标题',
    this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    print('test-route-index:pop执行了');
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('普通路由跳转'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              /// 路由普通带参数的跳转
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => GeneralRouteTest(title: '普通路由跳转test'),
              ))
            },
          ),
          RaisedButton(
            child: Text('命名路由跳转'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              /// 命名路由带参数的跳转
              Navigator.pushNamed(context, '/nameRouteTest', arguments: {
                'title': '命名路由跳转-test',
                'uid': 10000,
                'name': 'zhuangwei11122',
              })
            },
          ),
          RaisedButton(
            child: Text('替换路由跳转'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              /// 替换路由带参数的跳转
              Navigator.pushNamed(context, '/replaceRouteTest', arguments: {
                'title': '命名路由跳转-replace-test',
                'uid': 10000,
                'name': 'zhuangwei11122',
              })
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
