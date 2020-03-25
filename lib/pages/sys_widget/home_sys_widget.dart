import 'package:flutter/material.dart';

class HomeSysWidget extends StatefulWidget {
  @override
  _HomeSysWidgetState createState() => _HomeSysWidgetState();
}

class _HomeSysWidgetState extends State<HomeSysWidget> {
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
            child: Text('Container-Text'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/container_text_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('Button'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/button_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('Image'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/image_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('Column-Row'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/column_row_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('Wrap-Flow'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/wrap_flow_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('ListView'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/listview_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('GridView'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/gridview_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('Stack-Positioned'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/stack_positioned_sys_widget'),
            },
          ),
          RaisedButton(
            child: Text('ScrollController'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              Navigator.pushNamed(context, '/scroll_controller_sys_widget'),
            },
          ),
        ],
      ),
    );
  }
}
