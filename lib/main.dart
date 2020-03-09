import 'package:flutter/material.dart';
//import 'pages/tabs/BottomBar.dart';
import 'routes/Index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter and Dart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BottomBar(),
      initialRoute: '/imageWidget', //初始化加载的路由
      //routes: {},
      onGenerateRoute: onGenerateRoute,
    );
  }
}
