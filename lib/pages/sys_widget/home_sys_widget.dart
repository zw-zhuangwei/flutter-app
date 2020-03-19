import 'package:flutter/material.dart';

class HomeSysWidget extends StatefulWidget {
  @override
  _HomeSysWidgetState createState() => _HomeSysWidgetState();
}

class _HomeSysWidgetState extends State<HomeSysWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text('路由跳转'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/home_router_page', arguments: {
                'name': 'zhuangwei11122',
              })
            },
          ),
        ],
      ),
    );
  }
}
