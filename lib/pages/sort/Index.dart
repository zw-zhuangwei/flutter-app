import 'package:flutter/material.dart';
import '../../widgets/Column.dart';

class SortPage extends StatefulWidget {
  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '_BusinessState_1111',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            '_BusinessState_2222',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          RaisedButton(
            child: Text('跳转到Column'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () => {
              //路由普通跳转
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => ColumnPage(title: 'Column-Widget-1'),
              // ))

              // 命名路由带参数的跳转
              Navigator.pushNamed(context, '/column', arguments: {
                'name': 'zhuangwei11122',
              })
            },
          ),
        ],
      ),
    );
  }
}
