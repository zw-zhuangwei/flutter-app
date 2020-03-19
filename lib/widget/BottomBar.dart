import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';
import '../pages/sys_widget/home_sys_widget.dart';
import '../pages/plug_widget/home_plug_widget.dart';
import '../pages/demo/demo_page.dart';

class BottomBar extends StatefulWidget {
  final int index; //从其他页面返回到BottomBar
  BottomBar({this.index = 0});

  @override
  _BottomBarState createState() => _BottomBarState(this.index);
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex;
  _BottomBarState(index) {
    _currentIndex = index;
  }

  List _pageList = [HomePage(), HomeSysWidget(), HomePlugWidget(), DemoPage()];
  List _pageTitleList = ['首页', '系统组件', '第三方组件', '示例'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._pageTitleList[this._currentIndex]),
      ),

      body: this._pageList[this._currentIndex],

      drawer: Drawer(child: Text('你好flutter')), //抽屉

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, // 通过fixedColor设置选中item的颜色
        type: BottomNavigationBarType.fixed, // 配置底部tabs有多个按钮
        iconSize: 24.0, //icon 大小
        currentIndex: this._currentIndex, // 当前页面索引
        onTap: (int i) {
          // 点击切换事件
          setState(() {
            this._currentIndex = i;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('系统组件'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('第三方组件'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            title: Text('示例'),
          ),
        ],
      ),
    );
  }
}
