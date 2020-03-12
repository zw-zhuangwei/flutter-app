import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/Counter.dart';

class Status2ProviderTest extends StatefulWidget {
  @override
  _Status2ProviderTestState createState() => _Status2ProviderTestState();
}

class _Status2ProviderTestState extends State<Status2ProviderTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试状态改变2'),
      ),
      body: Column(
        children: <Widget>[
          Text('${Provider.of<Counter>(context).count}'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
