import 'package:flutter/material.dart';

class CheckBoxSysWidget extends StatefulWidget {
  CheckBoxSysWidget({Key key}) : super(key: key);

  _CheckBoxSysWidgetState createState() => _CheckBoxSysWidgetState();
}

class _CheckBoxSysWidgetState extends State<CheckBoxSysWidget> {
  bool flag1 = true;
  bool flag2 = false;
  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children: <Widget>[
            Checkbox(
              value: this.flag1,
              onChanged: (v) {
                setState(() {
                  this.flag1 = v;
                });
              },
              activeColor: Colors.red,
            )
          ]),
          Row(
            children: <Widget>[Text(this.flag1 ? "选中" : "未选中")],
          ),
          SizedBox(height: 40),

          // CheckboxListTile(
          //    value: this.flag,
          //     onChanged: (v){
          //       setState(() {
          //          this.flag=v;
          //       });
          //     },
          //     title: Text("标题"),
          //     subtitle:Text("这是二级标题") ,
          // ),
          Divider(),
          CheckboxListTile(
            value: this.flag2,
            onChanged: (v) {
              setState(() {
                this.flag2 = v;
              });
            },
            title: Text("标题"),
            subtitle: Text("这是二级标题"),
            // leading：secondary在开头位置，trailing：secondary在结尾位置，platform：根据平台确定
            controlAffinity: ListTileControlAffinity.leading,
            secondary: Icon(Icons.help),
          ),
          CheckboxListTile(
            value: this.flag3,
            onChanged: (v) {
              setState(() {
                this.flag3 = v;
              });
            },
            title: Text("标题"),
            subtitle: Text("这是二级标题"),
            // leading：secondary在开头位置，trailing：secondary在结尾位置，platform：根据平台确定
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Icon(Icons.help),
          ),
        ],
      ),
    );
  }
}
