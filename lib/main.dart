import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
//import 'pages/tabs/BottomBar.dart';
import './router/home_router.dart';

import './provider/Counter.dart';

void main() async {
  runZoned(() => runApp(MyApp()), onError: (Object obj, StackTrace stack) {
    //全局未捕获error拦截
    print('全局拦截错误obj：$obj');
    print('全局拦截错误stack：$stack');
  });
  // 设置状态栏颜色
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //该属性仅用于android设备
      statusBarBrightness: Brightness.light, //该属性仅用于 iOS
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        //  Provider<Counter>.value(value: null)
      ],
      child: Consumer<Counter>(
        builder: (context, counter, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, // 是否显示debug模式(去掉图标)
            title: 'Flutter and Dart',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // home: BottomBar(),
            initialRoute: '/aspectratio_card_sys_widget', //初始化加载的路由
            //routes: {},
            onGenerateRoute: onGenerateRoute, //路由拦截器
          );
        },
      ),
    );
  }
}
