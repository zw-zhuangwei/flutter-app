import 'package:flutter/material.dart';

import './widget_router.dart' as WidgetRouter;
import './sys_widget_router.dart' as SysWidgetRouter;
import './plug_router.dart' as PlugRouter;
import './test_router.dart' as TestRouter;
import './account_router.dart' as AccountRouter;

/// 合并多个路由(Map)对象
/// 文件路由加在此处
/// author zhuangwei
final Map routes = Map.from(WidgetRouter.routes)
  ..addAll(SysWidgetRouter.routes)
  ..addAll(PlugRouter.routes)
  ..addAll(TestRouter.routes)
  ..addAll(AccountRouter.routes);

// 路由拦截器
Route onGenerateRoute(RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
    }
  }
  return MaterialPageRoute(
      builder: (context) => routes['/'](context)); //找不到首页跳转到'/'对应的路由
}
