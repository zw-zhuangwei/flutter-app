import 'package:flutter/material.dart';
import '../home/Index.dart';
import '../sort/Index.dart';
import '../mine/Index.dart';
import '../demo/Index.dart';

class BottomBar extends StatefulWidget {
  int index; //从其他页面返回到BottomBar
  BottomBar({this.index = 0});

  @override
  _BottomBarState createState() => _BottomBarState(this.index);
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex;
  _BottomBarState(index) {
    _currentIndex = index;
  }

  List _pageList = [HomePage(), SortPage(), MinePage(), DemoPage()];
  List _pageTitleList = ['Home', 'Sort', 'Mine', 'Demo'];

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
          print(i);
          setState(() {
            this._currentIndex = i;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Sort'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Mine'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            title: Text('Demo'),
          ),
        ],
      ),
    );
  }
}
