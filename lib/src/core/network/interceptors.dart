import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await FlutterSecureStorage().read(key: 'token');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 400 && err.response?.data['response']['message'] == 'TOKEN_UNAVAILABLE') {
      final storage = FlutterSecureStorage();
      await storage.delete(key: 'token');
    }

    return super.onError(err, handler);
  }
}
