import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../const/token_type.dart';
import '../exception/custom_exception.dart';
import '../exception/error_code.dart';
import 'api_service.dart';
import 'interceptor/authentication_dio_interceptor.dart';
import 'local_service.dart';
import 'secure_local_service_impl.dart';

final authenticationNetworkApiServiceProvider = Provider<ApiService>((ref) {
  final localService = ref.watch(secureLocalServiceImplProvider);
  return AuthenticationNetworkApiService(localService);
},);

class AuthenticationNetworkApiService extends ApiService{
  final LocalService localService;
  Dio dio = Dio();

  AuthenticationNetworkApiService(this.localService) {
    dio.interceptors.add(
      AuthenticationDioInterceptor(localService),
    );
  }

  @override
  Future<Response<dynamic>> getGetApiResponse(String url,
      {Map<String, String>? headers,
        Map<String, dynamic>? queryParameters}) async {
    try {
      await checkToken();
      Response<dynamic> response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return response;
    } on CustomException catch (e) {
      rethrow;
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
      await checkToken();
      Response<dynamic> response = await dio.post(url,
          queryParameters: queryParameters,
          data: data,
          options: Options(headers: headers));

      return response;
    } on CustomException catch (e) {
      rethrow;
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
      await checkToken();
      Response<dynamic> response = await dio.put(url,
          queryParameters: queryParameters,
          data: data,
          options: Options(headers: headers));

      return response;
    } on CustomException catch (e) {
      rethrow;
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
      await checkToken();
      Response<dynamic> response = await dio.delete(url,
        queryParameters: queryParameters,
        options: Options(headers: headers),);

      return response;
    } on CustomException catch (e) {
      rethrow;
    } on DioException catch (e) {
      throw _checkErrorResponse(e);
    } catch (e) {
      throw CustomException(ErrorCode.UnknownError);
    }
  }

  CustomException _checkErrorResponse(DioException e) {
    if(e.type == DioExceptionType.unknown){
      if(e.error == ErrorCode.TokenReissueError){

      return CustomException(ErrorCode.TokenReissueError);
      }

      return CustomException(ErrorCode.UnknownError);
    }
    
    if(e.type == DioExceptionType.connectionError) {
      return CustomException(ErrorCode.NetworkConnectionError);
    }

    if(e.type == DioExceptionType.cancel) {
      return CustomException(ErrorCode.RequestCancelError);
    }

    if(e.type == DioExceptionType.connectionTimeout) {
      return CustomException(ErrorCode.ConnectionTimeoutError);
    }

    if(e.type == DioExceptionType.receiveTimeout) {
      return CustomException(ErrorCode.ReceiveTimeoutError);
    }

    if(e.type == DioExceptionType.sendTimeout) {
      return CustomException(ErrorCode.SendTimeoutError);
    }

    String errorType = e.response?.data['errorCode'];
    ErrorCode errorCode = ErrorCode.values.byName(errorType);
    return CustomException(errorCode);
  }

  Future checkToken() async {
    var object = await localService.getValue(TokenType.accessToken.name);

    if(object == null) {
      throw CustomException(ErrorCode.NoTokenError);
    }
  }
}