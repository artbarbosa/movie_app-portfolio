import 'package:dio/dio.dart';

import 'dio_service.dart';

class DioServiceImp implements DioService {
  @override
  getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
              'Bearer PORTFOLIO_REMOVED_API_TOKEN',
        },
      ),
    );
  }
}
