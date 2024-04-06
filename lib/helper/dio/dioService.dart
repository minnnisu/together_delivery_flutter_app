import 'package:dio/dio.dart';

class DioService {
  static final DioService _dioService = DioService._internal();
  factory DioService() => _dioService;
  Map<String, dynamic> dioInformation = {};

  static Dio _dio = Dio();

  DioService._internal() {
    BaseOptions _options = BaseOptions(
      baseUrl: "",
      connectTimeout: const Duration(milliseconds: 10000),
      receiveTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 10000),
      // headers: {},
    );
    _dio = Dio(_options);
    _dio.interceptors.add(DioInterceptor());
  }

  Dio to() {
    return _dio;
  }
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("BaseUrl ${options.baseUrl}");
    // print("Path ${options.path}");
    // print("Parameters ${options.queryParameters}");
    // print("Data ${options.data}");
    // print("Connect Timeout ${options.connectTimeout}");
    // print("Send Timeout ${options.sendTimeout}");
    // print("Receive Timeout ${options.receiveTimeout}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.statusCode);
    // print(response.data);
    // print("BaseUrl ${response.requestOptions.baseUrl}");
    // print("Path ${response.requestOptions.path}");
    // print("Parameters ${response.requestOptions.queryParameters}");
    // print("Data ${response.requestOptions.data}");
    // print("Connect Timeout ${response.requestOptions.connectTimeout}");
    // print("Send Timeout ${response.requestOptions.sendTimeout}");
    // print("Receive Timeout ${response.requestOptions.receiveTimeout}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // if(err.response?.statusCode == 409) {
    //   print("409 Error");
    // }
    // print("Error Message ${err.message}");
    // super.onError(err, handler);
    return handler.next(err);
  }
}