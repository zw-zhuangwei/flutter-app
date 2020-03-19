import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '这里是home1111页-1111',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Text(
          '这里是home页-2222',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        RaisedButton(
          child: Text('跳转到Button'),
          textTheme: ButtonTextTheme.primary,
          color: Theme.of(context).accentColor,
          onPressed: () => {
            // 路由普通带参数的跳转
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => ButtonPage(title: 'Buttom-Widget'),
            // ))

            // 命名路由带参数的跳转
            Navigator.pushNamed(context, '/indexRouteTest')
          },
        ),
      ],
    );
  }
}
