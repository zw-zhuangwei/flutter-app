import '../pages/router/home_router_page.dart';
import '../pages/router/general_router_page.dart';
import '../pages/router/name_router_page.dart';
import '../pages/router/replace_router_page.dart';
import '../pages/router/replace2_router_page.dart';

final routes = {
  '/home_router_page': (context, {arguments}) => HomeRoutePage(),
  '/general_router_page': (context) => GeneralRoutePage(),
  '/name_router_page': (context, {arguments}) =>
      NameRoutePage(arguments: arguments),
  '/replace_router_page': (context, {arguments}) =>
      ReplaceRoutePage(arguments: arguments),
  '/replace2_router_page': (context, {arguments}) =>
      Replace2RoutePage(arguments: arguments),
};
