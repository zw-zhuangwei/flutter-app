import 'package:flutter/material.dart';

class ContainerTextSysWidget extends StatefulWidget {
  @override
  _ContainerTextSysWidgetState createState() => _ContainerTextSysWidgetState();
}

class _ContainerTextSysWidgetState extends State<ContainerTextSysWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        child: Text(
          'containercontainercontainercontainercontainercontainercontainercontainer',
          textAlign: TextAlign.left, //对齐方式
          // textDirection: TextDirection.rtl,  //对齐方向

          overflow: TextOverflow.ellipsis,
          maxLines: 2, //最大行数

          textScaleFactor: 2, // 字放大两倍

          style: TextStyle(
            fontSize: 20.0,
            color: Colors.red,
            // color: Color.fromARGB(a, r, g, b)
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic, //设置字体倾斜

            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.solid,

            letterSpacing: 3.0, //字间距
          ),
        ),
        width: 300.0, // 单位为dp
        height: 300.0,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
        //transform: Matrix4.translationValues(100, 0, 0), //向右位移100
        alignment: Alignment.bottomLeft, //内容居于底部

        decoration: BoxDecoration(
          //装饰
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0), //圆角值
        ),
      ),
    );
  }
}
