import 'package:flutter/material.dart';

class ButtonSysWidget extends StatelessWidget {
  final String title;
  final arguments;
  ButtonSysWidget({this.title = '默认title', this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Text('Button内容！${this.arguments}'),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
