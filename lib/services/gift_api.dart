import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:init_flutter/models/api_response.dart';
import 'package:init_flutter/models/gift.dart';
import 'package:init_flutter/utils/api_config.dart';

class GiftApi {
  GiftApi(this._dio);

  late final Dio _dio;

  Future<void> getGifts({
    required ValueChanged<List<Gift>> onSuccess,
    required int page,
  }) async {
    final response = await _dio.get(
      "/gifts",
      queryParameters: ApiConfig.toParameter(page),
    );
    final stringResponse = jsonDecode(response.data);
    final parsed = ApiResponse.fromJson(stringResponse);
    if (parsed.data == null) {
      throw "Unexpected Error";
    }
    final result = parsed.data!
        .map((dynamic e) => Gift.fromJson(e as Map<String, dynamic>))
        .toList();
    onSuccess(result);
  }

  getDetailGifts({
    required ValueChanged<Gift> onSuccess,
    required String id,
  }) async {
    final response = await _dio.get(
      "/gifts/$id",
    );
    final parsed = jsonDecode(response.data);
    final result = Gift.fromJson(parsed);
    onSuccess(result);
  }
}
