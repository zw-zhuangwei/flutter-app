import 'package:flutter/material.dart';

// class TabbarSysWidget extends StatelessWidget {
//   const TabbarSysWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("TabbarSysWidget"),
//           // backgroundColor: Colors.red,
//           centerTitle: true,
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {
//               print('menu');
//             },
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.search),
//               onPressed: () {
//                 print('search');
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 print('settings');
//               },
//             )
//           ],
//           bottom: TabBar( // 也可以把tabbar放在title里
//             tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             ListView(
//               children: <Widget>[
//                 ListTile(title: Text("第一个tab")),
//                 ListTile(title: Text("第一个tab")),
//                 ListTile(title: Text("第一个tab"))
//               ],
//             ),
//             ListView(
//               children: <Widget>[
//                 ListTile(title: Text("第二个tab")),
//                 ListTile(title: Text("第二个tab")),
//                 ListTile(title: Text("第二个tab"))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class TabbarSysWidget extends StatefulWidget {
  TabbarSysWidget({Key key}) : super(key: key);

  _TabbarSysWidgetState createState() => _TabbarSysWidgetState();
}

class _TabbarSysWidgetState extends State<TabbarSysWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    //生命周期函数
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    //生命周期函数
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index); // 执行两次 一个tab 一个tab对应的内容
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController, //注意
          tabs: <Widget>[
            Tab(text: "热销"),
            Tab(text: "推荐"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController, //注意
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐"))
        ],
      ),
    );
  }
}
