import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/core.dart';
import '../presentation/widgets/network_logger/network_logger_interceptor.dart';

Dio _buildDio(
  ApiConfig config,
  EventBusHandler sessionEvent,
) {
  final _dio = Dio()
    ..options.baseUrl = config.baseUrl
    ..options.receiveDataWhenStatusError = true;
  // Add interceptors
  _dio.interceptors.addAll([
    logInterceptor,
    // AuthInterceptor(tokenProvider),
    NetworkLoggerInterceptor(),
    // SessionInterceptor(
    //   baseUrl: config.baseUrl,
    //   // tokenProvider: tokenProvider,
    //   onLockRequests: () {
    //     _dio
    //       ..lock()
    //       ..interceptors.requestLock.lock()
    //       ..interceptors.errorLock.lock();
    //   },
    //   onUnlockRequests: () {
    //     _dio
    //       ..unlock()
    //       ..interceptors.responseLock.unlock()
    //       ..interceptors.errorLock.unlock();
    //   },
    //   onSessionExpired: () {
    //     sessionEvent.fire(sessionExpiredEvent);
    //   },
    // ),
  ]);
  return _dio;
}

Future<void> apisModule(GetIt getIt, ApiConfig config) async {
  getIt
    ..registerLazySingleton<EventBusHandler>(() => EventBusHandler())
    ..registerLazySingleton<Dio>(
      () => _buildDio(
        config,
        getIt(),
      ),
    )
    ..registerLazySingleton<ApiHandler>(() => ApiHandlerImpl(getIt(), getIt()));
  // ..registerLazySingleton<AuthenticationRemoteDataSource>(
  //     () => AuthenticationRemoteDataSourceImpl(getIt()))
  // ..registerLazySingleton<UserRemoteDataSource>(
  //     () => UserRemoteDataSourceImpl(getIt()));
}
