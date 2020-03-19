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
      child: GridView.count(
        crossAxisCount: 3,
        //childAspectRatio: 1.0,
        children: <Widget>[
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
        ],
      ),
    );
  }
}
