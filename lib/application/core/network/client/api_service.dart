import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../external-values/i_external_values.dart';
import 'i_api_service.dart';

class ApiService extends Interceptor implements IApiService {
  ApiService.create({required IExternalValues externalValues}) {
    serviceGenerator(externalValues);
  }

  bool _isTokenRequired = false;

  @override
  Dio get() => _dio;

  @override
  BaseOptions getBaseOptions(IExternalValues externalValues) {
    return BaseOptions(
        baseUrl: externalValues.getBaseUrl(),
        receiveDataWhenStatusError: true,
        headers: {Headers.contentTypeHeader: "application/x-www-form-urlencoded"},
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60));
  }

  @override
  HttpClient httpClientCreate(HttpClient client) {
    client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    return client;
  }

  @override
  void serviceGenerator(IExternalValues externalValues) {
    _dio = Dio(getBaseOptions(externalValues));
    _dio.interceptors.add(this);

    // (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = httpClientCreate;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // if (_isTokenRequired) {
    //   final token = inject<IPrefHelper>().retrieveToken();
    //   if (token != null) {
    //     d(token);
    //     options.headers.addAll({"Authorization": "Bearer $token"});
    //   }
    // }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  late Dio _dio;

  @override
  void setIsTokenRequired({bool value = false}) {
    _isTokenRequired = value;
  }

  @override
  void enableLogger(bool value) {
    if (value) {
      _dio.interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, compact: false));
    }
  }
}
