import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../exception/custom_exception.dart';
import '../exception/error_code.dart';
import 'api_service.dart';

final networkApiServiceProvider =
    Provider<ApiService>((ref) => NetworkApiService());

class NetworkApiService extends ApiService {
  Dio dio = Dio();

  @override
  Future<Response<dynamic>> getGetApiResponse(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Response<dynamic> response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return response;
    } on DioException catch (e) {
      throw _checkErrorResponse(e);
    } catch (e) {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  @override
  Future<Response<dynamic>> getPostApiResponse(String url,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Response<dynamic> response = await dio.post(url,
          queryParameters: queryParameters,
          data: data,
          options: Options(headers: headers));

      return response;
    } on DioException catch (e) {
      throw _checkErrorResponse(e);
    } catch (e) {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  @override
  Future<Response<dynamic>> getPutApiResponse(String url,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Response<dynamic> response = await dio.put(url,
          queryParameters: queryParameters,
          data: data,
          options: Options(headers: headers));

      return response;
    } on DioException catch (e) {
      throw _checkErrorResponse(e);
    } catch (e) {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  @override
  Future<Response<dynamic>> getDeleteApiResponse(String url,
      {Map<String, String>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Response<dynamic> response = await dio.delete(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return response;
    } on DioException catch (e) {
      throw _checkErrorResponse(e);
    } catch (e) {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  CustomException _checkErrorResponse(DioException e) {
    if (e.type == DioExceptionType.unknown) {
      return CustomException(ErrorCode.UnknownError);
    }

    if (e.type == DioExceptionType.connectionError) {
      return CustomException(ErrorCode.NetworkConnectionError);
    }

    if (e.type == DioExceptionType.cancel) {
      return CustomException(ErrorCode.RequestCancelError);
    }

    if (e.type == DioExceptionType.connectionTimeout) {
      return CustomException(ErrorCode.ConnectionTimeoutError);
    }

    if (e.type == DioExceptionType.receiveTimeout) {
      return CustomException(ErrorCode.ReceiveTimeoutError);
    }

    if (e.type == DioExceptionType.sendTimeout) {
      return CustomException(ErrorCode.SendTimeoutError);
    }

    String errorType = e.response?.data['errorCode'];
    ErrorCode errorCode = ErrorCode.values.byName(errorType);
    return CustomException(errorCode);
  }
}
