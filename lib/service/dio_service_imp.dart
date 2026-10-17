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
              'Bearer ${const String.fromEnvironment("TMDB_READ_ACCESS_TOKEN")}',
        },
      ),
    );
  }
}
