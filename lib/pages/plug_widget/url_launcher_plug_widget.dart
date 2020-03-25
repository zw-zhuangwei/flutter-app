import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPlugWidget extends StatefulWidget {
  UrlLauncherPlugWidget({Key key}) : super(key: key);

  _UrlLauncherPlugWidgetState createState() => _UrlLauncherPlugWidgetState();
}

class _UrlLauncherPlugWidgetState extends State<UrlLauncherPlugWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UrlLauncher'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            RaisedButton(
              child: Text('打开外部浏览器'),
              onPressed: () async {
                const url = 'https://cflutter.com';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('拨打电话'),
              onPressed: () async {
                var tel = 'tel:10086';
                if (await canLaunch(tel)) {
                  await launch(tel);
                } else {
                  throw 'Could not launch $tel';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('发送短信'),
              onPressed: () async {
                var tel = 'sms:10086';
                if (await canLaunch(tel)) {
                  await launch(tel);
                } else {
                  throw 'Could not launch $tel';
                }
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('打开外部应用'),
              onPressed: () async {
                /// weixin:
                /// alipays:
                var url = 'alipays://';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
