import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'pages/tabs/BottomBar.dart';
import 'routes/Index.dart';

import 'provider/Counter.dart';

void main() {
  runZoned(() => runApp(MyApp()), onError: (Object obj, StackTrace stack) {
    //全局未捕获error拦截
    print('全局拦截错误obj：$obj');
    print('全局拦截错误stack：$stack');
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: Consumer<Counter>(
        builder: (context, counter, _) {
          return MaterialApp(
            title: 'Flutter and Dart',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // home: BottomBar(),
            initialRoute: '/showWebviewTest', //初始化加载的路由
            //routes: {},
            onGenerateRoute: onGenerateRoute,
          );
        },
      ),
    );
  }
}
