import 'package:flutter/material.dart';

class GeneralRoutePage extends StatelessWidget {
  final String title;
  GeneralRoutePage({
    this.title = '标题',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Text('普通路由跳转test'),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
