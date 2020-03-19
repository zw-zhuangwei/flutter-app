import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPlugWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: Scaffold(
        //   body: WebView(
        //     // 初始化加载的url
        //     initialUrl: 'https://www.baidu.com/',
        //     // 是否允许执行js脚本
        //     javascriptMode: JavascriptMode.unrestricted,
        //     // 拦截URL
        //     navigationDelegate: (NavigationRequest request) {
        //       if (request.url.startsWith('https://www.baidu.com')) {
        //         //做一些事情
        //         //阻止页面操作
        //         // return NavigationDecision.prevent
        //       }
        //     },
        //     onWebViewCreated: (WebViewController controller) {},
        //     onPageFinished: (String value) {
        //       print('onPageFinished: $value');
        //     },
        //   ),
        // ),
        );
  }
}
