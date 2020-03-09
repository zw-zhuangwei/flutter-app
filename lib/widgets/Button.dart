import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  final arguments;
  ButtonWidget({this.title = '默认title', this.arguments});

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
