import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowWebviewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: WebView(
          // 初始化加载的url
          initialUrl: 'http://blog.phoenixsky.cn',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {},
          onPageFinished: (String value) {
            print('onPageFinished');
          },
        ),
      ),
    );
  }
}
