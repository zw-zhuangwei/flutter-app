import 'package:flutter/material.dart';

import '../pages/tabs/BottomBar.dart';

import '../test/route/Index.dart';
import '../test/route/General.dart';
import '../test/route/Name.dart';
import '../test/route/Replace.dart';
import '../test/route/Replace2.dart';
import '../test/dio/Request.dart';
import '../test/provider/Status.dart';
import '../test/provider/Status2.dart';
import '../test/webview/show.dart';

import '../widgets/ContainerAndText.dart';
import '../widgets/Button.dart';
import '../widgets/Column.dart';
import '../widgets/Image.dart';

final routes = {
  '/': (context) => BottomBar(),
  '/indexRouteTest': (context) => IndexRouteTest(),
  '/generalRouteTest': (context) => GeneralRouteTest(),
  '/nameRouteTest': (context, {arguments}) =>
      NameRouteTest(arguments: arguments),
  '/replaceRouteTest': (context, {arguments}) =>
      ReplaceRouteTest(arguments: arguments),
  '/replace2RouteTest': (context, {arguments}) =>
      Replace2RouteTest(arguments: arguments),
  '/requestDioTest': (context) => RequestDioTest(),
  '/statusProviderTest': (context) => StatusProviderTest(),
  '/status2ProviderTest': (context) => Status2ProviderTest(),
  '/showWebviewTest': (context) => ShowWebviewTest(),
  '/containerAndText': (context) => ContainerAndText(),
  '/imageWidget': (context) => ImageWidget(),
  '/buttonWidget': (context, {arguments}) => ButtonWidget(arguments: arguments),
  '/columnWidget': (context, {arguments}) => ColumnWidget(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
