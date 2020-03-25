import 'package:flutter/material.dart';

/// GridView 掌握三种方法
/// GridView.count
/// GridView.builder SliverGridDelegateWithFixedCrossAxisCount  //水平方向数量固定
/// GridView.builder (SliverGridDelegateWithMaxCrossAxisExtent) //水平方向数量不固定

///  Axis scrollDirection = Axis.vertical,
///  bool reverse = false,
///  ScrollController controller,
///  bool primary,
///  ScrollPhysics physics,
///  bool shrinkWrap = false,
///  EdgeInsetsGeometry padding,
///  @required SliverGridDelegate gridDelegate, //控制子widget layout的委托
///   bool addAutomaticKeepAlives = true,
///  bool addRepaintBoundaries = true,
///  double cacheExtent,
///  List<Widget> children = const <Widget>[],

class GridviewSysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 100;
    List<Widget> _listWidget = [];
    for (var i = 0; i < num; i++) {
      _listWidget.add(
        RaisedButton(
          child: Text('GridView测试'),
          textTheme: ButtonTextTheme.primary,
          color: Theme.of(context).accentColor,
          onPressed: () => {},
        ),
      );
    }

    // return Scaffold(
    //   body: Container(
    //     child: GridView.count(
    //       crossAxisSpacing: 10.0, //水平子Widget之间间距
    //       mainAxisSpacing: 30.0, //垂直子Widget之间间距
    //       padding: EdgeInsets.all(10.0), //GridView内边距
    //       crossAxisCount: 4, //一行的Widget数量
    //       childAspectRatio: 2.0, //子Widget宽高比例
    //       ///子Widget列表
    //       children: _listWidget,
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   body: Container(
    //     child: GridView.builder(
    //       itemCount: 100,
    //       padding: EdgeInsets.all(10),

    //       /// SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3, //横轴元素个数
    //         mainAxisSpacing: 20, //纵轴间距
    //         crossAxisSpacing: 10, //横轴间距
    //         childAspectRatio: 2, //子组件宽高长度比例
    //       ),
    //       itemBuilder: (BuildContext context, int index) {
    //         return RaisedButton(
    //           child: Text('GridView测试'),
    //           textTheme: ButtonTextTheme.primary,
    //           color: Theme.of(context).accentColor,
    //           onPressed: () => {},
    //         );
    //       },
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: 100,
          padding: EdgeInsets.all(10),

          /// SliverGridDelegateWithMaxCrossAxisExtent 构建一个横轴不固定数量Widget
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, //单个子Widget的水平最大宽度
            mainAxisSpacing: 20.0, //水平单个子Widget之间间距
            crossAxisSpacing: 10.0, //垂直单个子Widget之间间距
          ),
          itemBuilder: (BuildContext context, int index) {
            return RaisedButton(
              child: Text('GridView测试'),
              textTheme: ButtonTextTheme.primary,
              color: Theme.of(context).accentColor,
              onPressed: () => {},
            );
          },
        ),
      ),
    );
  }
}
