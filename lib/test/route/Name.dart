import 'package:flutter/material.dart';

/// StatefulWidget如何传值 方法1

class NameRouteTest extends StatefulWidget {
  final arguments;
  NameRouteTest({this.arguments});

  @override
  _NameRouteTestState createState() => _NameRouteTestState();
}

class _NameRouteTestState extends State<NameRouteTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.arguments['title']}'),
      ),
      body: Text('命名路由跳转test参数为：${widget.arguments}'),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}

/// StatefulWidget如何传值 方法2

// class NameRouteTest extends StatefulWidget {
//   final arguments;
//   NameRouteTest({this.arguments});

//   @override
//   _NameRouteTestState createState() =>
//       _NameRouteTestState(arguments: this.arguments);
// }

// class _NameRouteTestState extends State<NameRouteTest> {
//   final arguments;
//   _NameRouteTestState({this.arguments});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${this.arguments['title']}'),
//       ),
//       body: Text('命名路由跳转test参数为：${this.arguments}'),
//       floatingActionButton: FloatingActionButton(
//         child: Text('返回'),
//         onPressed: () => Navigator.of(context).pop(),
//       ),
//     );
//   }
// }
