import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/Counter.dart';

class ProviderStatus2PlugWidget extends StatefulWidget {
  @override
  _ProviderStatus2PlugWidgetState createState() =>
      _ProviderStatus2PlugWidgetState();
}

class _ProviderStatus2PlugWidgetState extends State<ProviderStatus2PlugWidget> {
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
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
