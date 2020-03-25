import 'dart:io';
import 'package:dio/dio.dart';

import '../config/manage_config.dart';
import '../utils/storage_util.dart';

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
      },
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options) async {
          options.headers['authorization'] =
              await StorageUtil.getString(ManageConfig.userTokenStorage) ?? '';
          print("请求之前");
          print(options.headers);
          return options;
        },
        onResponse: (Response response) async {
          print("响应之前");
          return response;
        },
        onError: (DioError e) async {
          print("错误之前: $e");
          if (e.type == DioErrorType.CONNECT_TIMEOUT) {
            print("连接超时");
          } else if (e.type == DioErrorType.SEND_TIMEOUT) {
            print("请求超时");
          } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
            print("响应超时");
          } else if (e.type == DioErrorType.CANCEL) {
            print("请求取消");
          } else {
            print('异常状态码：${e.response?.statusCode}');
          }
          return e;
        },
      ),
    );
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
