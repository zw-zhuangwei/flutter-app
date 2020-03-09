import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../api/TestApi.dart';

class RequestDioTest extends StatefulWidget {
  @override
  _RequestDioTestState createState() => _RequestDioTestState();
}

class _RequestDioTestState extends State<RequestDioTest>
    with SingleTickerProviderStateMixin {
  var _reqData1;
  var _reqData2;

  @override
  void initState() {
    // 生命周期初始化
    super.initState();
  }

  @override
  void dispose() {
    // 生命周期销毁
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test-dio-request'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('get请求测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () async {
              Map res = await TestApi.test(
                {
                  'tag': 1,
                },
                RequestOptions(
                    baseUrl: "http://www.dtworkroom.com/doris/1/2.0.0/"),
              );
              print(5555555);
              print(res);
              setState(() => this._reqData1 = res);
            },
          ),
          RaisedButton(
            child: Text('get请求测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () async {
              var res = await TestApi.test1();
              print(6666666);

              setState(() => this._reqData2 = res);
              print(this._reqData2['data']['user'][0]);
            },
          ),
          RaisedButton(
            child: Text('post请求测试'),
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
            onPressed: () async {
              Map res = await TestApi.test2({
                'ask': "chenbenquan",
                'date': "2020-01-12",
                'id': 28,
                'reply': "1111",
                'title': "什么是跨域？跨域请求资源的方法有哪些555？"
              });
              print(7777777);
              print(res['data']);
            },
          ),
          Text('返回数据：${this._reqData1}'),
          Text('--------------------------------------------------------'),
          Text('返回数据：${this._reqData2}'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
