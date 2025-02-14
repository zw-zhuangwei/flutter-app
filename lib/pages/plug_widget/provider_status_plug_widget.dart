import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../../provider/Counter.dart';

class ProviderStatusPlugWidget extends StatefulWidget {
  @override
  _ProviderStatusPlugWidgetState createState() =>
      _ProviderStatusPlugWidgetState();
}

class _ProviderStatusPlugWidgetState extends State<ProviderStatusPlugWidget> {
  var count;
  didChangeDependencies() {
    super.didChangeDependencies();
    final count = Provider.of<Counter>(context).count;
    if (count != this.count) {
      this.count = count;
      Fluttertoast.cancel();
      Fluttertoast.showToast(
        msg: "count值为：$count",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      print(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              Text('count值：${Provider.of<Counter>(context).count}'),
              FlatButton(
                child: Text("跳转"),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/provider_status2_plug_widget');
                },
              ),
              FlatButton(
                  child: Text("返回"),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<Counter>(context, listen: false).increment();
          },
          tooltip: '添加',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
