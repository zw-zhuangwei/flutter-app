import 'package:flutter/material.dart';

/// StatelessWidget如何传值

// class ColumnWidget extends StatelessWidget {
//   String title;
//   final arguments;
//   ColumnWidget({this.title = '默认标题', this.arguments});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(this.title),
//       ),
//       body: Text('Column-widget'),
//     );
//   }
// }

/// StatefulWidget如何传值 方法1

class ColumnWidget extends StatefulWidget {
  String title;
  final arguments;
  ColumnWidget({this.title = '默认标题', this.arguments});

  @override
  _ColumnWidgetState createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text('Column-widget-${widget.arguments}'),
    );
  }
}

/// StatefulWidget如何传值 方法2

// class ColumnWidget extends StatefulWidget {
//   String title;
//   final arguments;
//   ColumnWidget({this.title = '默认标题', this.arguments});

//   @override
//   _ColumnWidgetState createState() =>
//       _ColumnWidgetState(title: this.title, arguments: this.arguments);
// }

// class _ColumnWidgetState extends State<ColumnWidget> {
//   String title;
//   final arguments;
//   _ColumnWidgetState({this.title, this.arguments});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Text('Column-widget2-${this.arguments}'),
//     );
//   }
// }
