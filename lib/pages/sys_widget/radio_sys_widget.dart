import 'package:flutter/material.dart';

class RadioSysWidget extends StatefulWidget {
  @override
  _RadioSysWidgetState createState() => _RadioSysWidgetState();
}

class _RadioSysWidgetState extends State<RadioSysWidget> {
  int _sex1 = 1;
  int _sex2 = 10;
  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  groupValue: this._sex1,
                  onChanged: (v) {
                    setState(() {
                      this._sex1 = v;
                    });
                  },
                ),
                Text('女'),
                Radio(
                  value: 2,
                  groupValue: this._sex1,
                  onChanged: (v) {
                    setState(() {
                      this._sex1 = v;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            RadioListTile(
              value: 1,
              groupValue: this._sex2,
              onChanged: (v) {
                setState(() {
                  this._sex2 = v;
                });
              },
              title: Text("标题"),
              subtitle: Text("这是二级标题"),
              // leading：secondary在开头位置，trailing：secondary在结尾位置，platform：根据平台确定
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Icon(Icons.help),
            ),
            RadioListTile(
              value: 2,
              groupValue: this._sex2,
              onChanged: (v) {
                setState(() {
                  this._sex2 = v;
                });
              },
              title: Text("标题"),
              subtitle: Text("这是二级标题"),
              // leading：secondary在开头位置，trailing：secondary在结尾位置，platform：根据平台确定
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: Icon(Icons.help),
            ),
            SizedBox(height: 50),
            Switch(
              value: this._flag,
              onChanged: (v) {
                setState(() {
                  this._flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
