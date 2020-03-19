import 'package:flutter/material.dart';

/// StatelessWidget如何传值

// class ColumnSysWidget extends StatelessWidget {
//   String title;
//   final arguments;
//   ColumnSysWidget({this.title = '默认标题', this.arguments});

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

class ColumnSysWidget extends StatefulWidget {
  final String title;
  final arguments;
  ColumnSysWidget({this.title = '默认标题', this.arguments});

  @override
  _ColumnSysWidgetState createState() => _ColumnSysWidgetState();
}

class _ColumnSysWidgetState extends State<ColumnSysWidget> {
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

// class ColumnSysWidget extends StatefulWidget {
//   String title;
//   final arguments;
//   ColumnSysWidget({this.title = '默认标题', this.arguments});

//   @override
//   _ColumnSysWidgetState createState() =>
//       _ColumnSysWidgetState(title: this.title, arguments: this.arguments);
// }

// class _ColumnSysWidgetState extends State<ColumnSysWidget> {
//   String title;
//   final arguments;
//   _ColumnSysWidgetState({this.title, this.arguments});
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
