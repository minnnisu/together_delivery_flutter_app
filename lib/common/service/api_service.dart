import 'dart:convert';

import 'package:dio/dio.dart';

import '../exception/custom_exception.dart';
import '../exception/error_code.dart';

abstract class ApiService {
  Future<Response<dynamic>> getGetApiResponse(String url,
      {Map<String, String>? headers, Map<String, dynamic>? queryParameters});

  Future<Response<dynamic>> getPostApiResponse(String url,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters});

  Future<Response<dynamic>> getPutApiResponse(String url,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters});

  Future<Response<dynamic>> getDeleteApiResponse(String url,
      {Map<String, String>? headers, Map<String, dynamic>? queryParameters});
}
