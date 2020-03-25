import 'package:flutter/material.dart';

class HomePlugWidget extends StatefulWidget {
  @override
  _HomePlugWidgetState createState() => _HomePlugWidgetState();
}

class _HomePlugWidgetState extends State<HomePlugWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2,
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
          RaisedButton(
            child: Text('dio测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/dio_plug_widget'),
            },
          ),
          RaisedButton(
            child: Text('provider测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/provider_status_plug_widget'),
            },
          ),
          RaisedButton(
            child: Text('swiper测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/swiper_plug_widget'),
            },
          ),
          RaisedButton(
            child: Text('shimmer测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/shimmer_plug_widget'),
            },
          ),
          RaisedButton(
            child: Text('url_launcher'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/url_launcher_plug_widget'),
            },
          ),
          RaisedButton(
            child: Text('webview测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/webview_plug_widget'),
            },
          ),
        ],
      ),
    );
  }
}
