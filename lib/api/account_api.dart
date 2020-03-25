import '../utils/dio_util.dart';

class AccountApi {
  static DioUtil request = DioUtil();
  static login(data) => request.post('/api/user/login', data: data);
}
