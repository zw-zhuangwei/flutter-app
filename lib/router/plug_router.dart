import '../pages/plug_widget/dio_plug_widget.dart';
import '../pages/plug_widget/provider_status_plug_widget.dart';
import '../pages/plug_widget/provider_status2_plug_widget.dart';
import '../pages/plug_widget/swiper_plug_widget.dart';
import '../pages/plug_widget/shimmer_plug_widget.dart';
import '../pages/plug_widget/webview_plug_widget.dart';
import '../pages/plug_widget/url_launcher_plug_widget.dart';

final routes = {
  '/dio_plug_widget': (context) => DioPlugWidget(),
  '/provider_status_plug_widget': (context) => ProviderStatusPlugWidget(),
  '/provider_status2_plug_widget': (context) => ProviderStatus2PlugWidget(),
  '/swiper_plug_widget': (context) => SwiperPlugWidget(),
  '/shimmer_plug_widget': (context) => ShimmerPlugWidget(),
  '/webview_plug_widget': (context) => WebviewPlugWidget(),
  '/url_launcher_plug_widget': (context) => UrlLauncherPlugWidget(),
};
