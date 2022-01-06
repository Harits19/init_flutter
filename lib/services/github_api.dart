import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:github_app/services/api_config.dart';

class GithubApi {
  GithubApi(this._dio);

  late final Dio _dio;

  getSearchUser({
    required ValueChanged<dynamic> onSuccess,
    required ValueChanged<String> onError,
    required String query,
    required int page,
  }) async {
    try {
      final response = await _dio.get(
        "/users",
        queryParameters: ApiConfig.toParameter(query, page),
      );
      onSuccess(response);
    } on DioError catch (e) {
      onError(e.message);
    } on Exception catch (e) {
      onError(e.toString());
    }
  }
}
