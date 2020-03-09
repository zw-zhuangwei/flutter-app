import 'dart:io';
import 'package:dio/dio.dart';

class DioUtil {
  Dio dio;
  Response response;
  DioUtil() {
    dio = Dio(BaseOptions(
      //baseUrl: "http://www.dtworkroom.com/doris/1/2.0.0/",
      baseUrl: "http://feset.sh-jiuye.com.cn",
      connectTimeout: 5000, // 连接服务器超时时间，单位是毫秒
      receiveTimeout: 100000, // 响应流上前后两次接受到数据的间隔，单位为毫秒
      headers: {
        HttpHeaders.userAgentHeader: "dio",
        // 'Authorization':
        //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInVuYW1lIjoiemh1YW5nd2VpIiwibW9iaWxlIjoiIiwiZW1haWwiOiIiLCJmYWNlIjoiaHR0cDovL2ljbXp5LmNvbS9GbkVrMWdVXzBFdEg3NGlqQlVmb0lsOENOZWxfIiwiaWF0IjoxNTgzMDg5MzU3LCJleHAiOjE1ODMxNzU3NTd9.szRb8TAxE5wmQ3ssZAtsBNZqCnYU185xCPC-9nVOglA',
      },
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      print("请求之前");
      return options;
    }, onResponse: (Response response) async {
      print("响应之前");
      return response;
    }, onError: (DioError e) async {
      print("错误之前: $e");
      if (e.type == DioErrorType.CONNECT_TIMEOUT) {
        // It occurs when url is opened timeout.
        print("连接超时");
      } else if (e.type == DioErrorType.SEND_TIMEOUT) {
        // It occurs when url is sent timeout.
        print("请求超时");
      } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
        //It occurs when receiving timeout
        print("响应超时");
      } else if (e.type == DioErrorType.CANCEL) {
        // When the request is cancelled, dio will throw a error with this type.
        print("请求取消");
      } else {
        print('异常状态码：${e.response?.statusCode}');
      }
      return e;
    }));
  }

  /// get请求
  get(url, {data, options, cancelToken}) async {
    response = await dio.get(url,
        queryParameters: data, options: options, cancelToken: cancelToken);
    // print('get success:::${response.statusCode}---${response.data}');
    return response.data;
  }

  /// post请求
  post(url, {data, options, cancelToken}) async {
    // 参数是queryParameters 还是 data 根据实际业务选择
    response = await dio.post(url,
        data: data, options: options, cancelToken: cancelToken);
    return response.data;
  }
}
