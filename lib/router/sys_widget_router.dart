import '../pages/sys_widget/container_text_sys_widget.dart';
import '../pages/sys_widget/button_sys_widget.dart';
import '../pages/sys_widget/column_row_sys_widget.dart';
import '../pages/sys_widget/image_sys_widget.dart';
import '../pages/sys_widget/listview_sys_widget.dart';
import '../pages/sys_widget/gridview_sys_widget.dart';
import '../pages/sys_widget/scroll_controller_sys_widget.dart';
import '../pages/sys_widget/wrap_flow_sys_widget.dart';
import '../pages/sys_widget/stack_positioned_sys_widget.dart';
import '../pages/sys_widget/appbar_sys_widget.dart';
import '../pages/sys_widget/tabbar_sys_widget.dart';
import '../pages/sys_widget/textfield_sys_widget.dart';
import '../pages/sys_widget/checkbox_sys_widget.dart';
import '../pages/sys_widget/radio_sys_widget.dart';
import '../pages/sys_widget/aspectratio_card_sys_widget.dart';

final routes = {
  '/container_text_sys_widget': (context) => ContainerTextSysWidget(),
  '/button_sys_widget': (context, {arguments}) => ButtonSysWidget(),
  '/column_row_sys_widget': (context) => ColumnRowSysWidget(),
  '/image_sys_widget': (context) => ImageSysWidget(),
  '/listview_sys_widget': (context) => ListviewSysWidget(),
  '/gridview_sys_widget': (context) => GridviewSysWidget(),
  '/scroll_controller_sys_widget': (context) => ScrollControllerSysWidget(),
  '/wrap_flow_sys_widget': (context) => WrapFlowSysWidget(),
  '/stack_positioned_sys_widget': (context) => StackPositionedSysWidget(),
  '/appbar_sys_widget': (context) => AppbarSysWidget,
  '/tabbar_sys_widget': (context) => TabbarSysWidget(),
  '/textfield_sys_widget': (context) => TextfieldSysWidget(),
  '/checkbox_sys_widget': (context) => CheckBoxSysWidget(),
  '/radio_sys_widget': (context) => RadioSysWidget(),
  '/aspectratio_card_sys_widget': (context) => AspectratioCardSysWidget(),
};
