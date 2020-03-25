import 'package:flutter/material.dart';

class ColumnRowSysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            textDirection: TextDirection.ltr, //水平方向子组件的布局顺序(是从左往右还是从右往左)
            mainAxisSize: MainAxisSize.max, //Row在主轴(水平)方向占用的空间，默认是max
            mainAxisAlignment: MainAxisAlignment.start, //水平空间内对齐方式
            crossAxisAlignment: CrossAxisAlignment.start, //纵轴方向的对齐方式
            //textBaseline: TextBaseline.alphabetic, //如果是baseline 与crossAxisAlignment: CrossAxisAlignment.baseline搭配使用、否则会报错
            //verticalDirection: VerticalDirection.down, //纵轴（垂直）的对齐方向
            children: List.generate(15, (index) {
              return Container(
                color: Colors.orange,
                child: FlutterLogo(
                  size: 60.0,
                ),
              );
            }),
          ),
          SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.start, //纵轴方向对齐方式
            crossAxisAlignment: CrossAxisAlignment.start, //水平方向的对齐方式
            children: List.generate(30, (index) {
              return Container(
                color: Colors.orange,
                child: FlutterLogo(
                  size: 60.0,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
