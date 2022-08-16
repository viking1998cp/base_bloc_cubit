import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lichviet_modules/core/core.dart';

typedef ApiResponseToModelParser<T> = T Function(Map<String, dynamic> json);

abstract class ApiHandler {
  factory ApiHandler(Dio dio, NetworkProvider networkProvider) =>
      ApiHandlerImpl(dio, networkProvider);

  // parser JSON data {} => Object
  Future<T> post<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  // parser JSON data {} => Object
  Future<T> get<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  // parser JSON data [] => List Object
  Future<List<T>> getList<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  // parser JSON data {} => Object
  Future<T> put<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  // parser JSON data {} => Object
  Future<T> delete<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

class ApiHandlerImpl implements ApiHandler {
  ApiHandlerImpl(this._dio, this.networkProvider);

  final Dio _dio;
  final NetworkProvider networkProvider;

  @override
  Future<T> post<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.post(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options,
      );
      return parser(response.data);
    });
  }

  @override
  Future<T> get<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return parser(response.data);
    });
  }

  @override
  Future<T> delete<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.delete(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options,
      );
      return parser(response.data);
    });
  }

  @override
  Future<T> put<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.put(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options,
      );
      return parser(response.data);
    });
  }

  @override
  Future<List<T>> getList<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return (response.data as List)
          .map<T>((e) => parser(e as Map<String, dynamic>))
          .toList();
    });
  }

  Future<T> _remapError<T>(ValueGetter<Future<T>> func) async {
    try {
      return await func();
    } catch (e) {
      throw await _apiErrorToInternalError(e);
    }
  }

  Future<dynamic> _apiErrorToInternalError(e) async {
    if (e is DioError) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          (e.type == DioErrorType.other && e.error is SocketException)) {
        return NetworkIssueException();
      }
      return ServerException(e);
    }
    return e;
  }
}
