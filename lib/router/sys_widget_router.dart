import '../pages/sys_widget/container_text_sys_widget.dart';
import '../pages/sys_widget/button_sys_widget.dart';
import '../pages/sys_widget/column_sys_widget.dart';
import '../pages/sys_widget/image_sys_widget.dart';
import '../pages/sys_widget/listview_sys_widget.dart';
import '../pages/sys_widget/gridview_sys_widget.dart';

final routes = {
  '/container_text_sys_widget': (context) => ContainerTextSysWidget(),
  '/button_sys_widget': (context, {arguments}) =>
      ButtonSysWidget(arguments: arguments),
  '/column_sys_widget': (context, {arguments}) =>
      ColumnSysWidget(arguments: arguments),
  '/image_sys_widget': (context) => ImageSysWidget(),
  '/listview_sys_widget': (context) => ListviewSysWidget(),
  '/gridview_sys_widget': (context) => GridviewSysWidget(),
};
