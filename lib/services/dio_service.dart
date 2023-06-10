import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioService = Provider<DioService>((ref) {
  return DioService();
});

class DioService {
  late final Dio _dio;

  Dio get dio => _dio;

  void init() {
    final options = BaseOptions(
      baseUrl: "https://recruitment.dev.rollingglory.com/api/v2",
      connectTimeout: 12000,
      receiveTimeout: 12000,
    );
    final dioInstance = Dio(options);
    dioInstance.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    _dio = dioInstance;
  }
}
