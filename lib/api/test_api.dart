import '../utils/DioUtil.dart';

class TestApi {
  static DioUtil request = DioUtil();

  static test(data, options) => request.get(
        '/test',
        data: data,
        options: options,
      );
  static test1() => request.get('/api/enums/enumList');
  static test2(data) => request.post('/api/subject/subEditSave', data: data);
}
