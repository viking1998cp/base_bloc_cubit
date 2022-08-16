import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// An interceptor to show logs in debug console.
/// It should be enabled in debug mode only

final logInterceptor = LogInterceptor(
  request: kDebugMode,
  requestBody: kDebugMode,
  responseBody: kDebugMode,
  responseHeader: false,
  requestHeader: kDebugMode,
);
