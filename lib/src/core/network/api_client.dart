import 'package:dio/dio.dart';
import 'interceptors.dart';

class ApiClient {
  final Dio dio;

  ApiClient({Dio? dio})
    : dio =
          dio ??
          Dio(
            BaseOptions(baseUrl: 'https://caseapi.servicelabs.tech/', headers: {'Content-Type': 'application/json'}),
          ) {
    this.dio.interceptors.add(DioInterceptor());
  }

  Future<T> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic json) fromJson,
  }) async {
    try {
      final response = await dio.get(path, queryParameters: queryParameters);

      return fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Unexpected Dio error: ${e.message}');
    }
  }

  Future<T> post<T>({
    required String path,
    Map<String, dynamic>? data,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        options: Options(validateStatus: (status) => status != null && status < 500),
      );

      if (response.data is Map<String, dynamic>) {
        return fromJson(response.data as Map<String, dynamic>);
      } else {
        throw Exception('Response is not a valid JSON object');
      }
    } on DioException catch (e) {
      if (e.response?.data != null && e.response!.data is Map<String, dynamic>) {
        return fromJson(e.response!.data as Map<String, dynamic>);
      }
      throw Exception('Unexpected Dio error: ${e.message}');
    }
  }
}
