// import 'dart:collection';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:lichviet_modules/core/core.dart';

// import '../../../data/datasource/local/key_rsa_triplet_provider.dart';
// import '../../../data/datasource/local/token_provider.dart';
// import '../../../data/datasource/remote/end_points.dart';
// import '../../../data/model/response/token_response_model.dart';
// import '../../../domain/entities/response/token_response_entity.dart';
// import '../../../presentation/widgets/network_logger/network_logger_interceptor.dart';

// /// An interceptor to handle session expired and try refresh token if available
// /// When a request failed with error code 401 or 403 and token is not null
// /// It will try call refresh token
// /// At this time, all requests should be locked. You can handle lock request on callback [onLockRequests]
// /// If successfully, it will save new token, refresh token. You must unlock request in callback [onUnlockRequests]
// /// If failure, it will trigger full exipred, you can listen on [onSessionExpired]
// class SessionInterceptor extends Interceptor {
//   // final KeyRsaTripletProvider keyRsaTripletProvider;
//   // final TokenProvider tokenProvider;
//   final VoidCallback onLockRequests;
//   final VoidCallback onUnlockRequests;
//   final VoidCallback onSessionExpired;
//   final String baseUrl;

//   SessionInterceptor({
//     required this.baseUrl,
//     required this.onLockRequests,
//     required this.onUnlockRequests,
//     required this.onSessionExpired,
//     // required this.tokenProvider,
//     // required this.keyRsaTripletProvider,
//   });

//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     final _token = tokenProvider.token;
//     final _errorCode = err.response?.statusCode;
//     if (_token != null) {
//       final _authorization = 'Bearer ${_token.accessToken}';
//       if (_shouldRefreshToken(_token, _errorCode)) {
//         final _originalOptions = err.requestOptions;
//         // If the token has been updated, repeat directly.
//         if (_authorization != _originalOptions.headers['Authorization']) {
//           _originalOptions.headers['Authorization'] = _authorization;
//           // retry original request
//           Dio()
//             ..interceptors.addAll([
//               logInterceptor,
//               NetworkLoggerInterceptor(),
//             ])
//             ..fetch(_originalOptions).then(
//               (resp) => handler.resolve(resp),
//               onError: (e) => handler.reject(e),
//             );
//           return;
//         }
//         // Lock to block the incoming request until the token updated
//         onLockRequests();

//         Dio()
//           ..options = BaseOptions(
//             baseUrl: baseUrl,
//             contentType: 'application/x-www-form-urlencoded',
//             headers: {
//               ..._originalOptions.headers,
//               'Authorization': _authorization,
//               'Accept': 'application/json',
//             },
//           )
//           ..interceptors.addAll([
//             logInterceptor,
//             NetworkLoggerInterceptor(),
//           ])
//           ..post(
//             EndPoints.refreshToken,
//             data: {
//               'grant_type': 'refresh_token',
//               'refresh_token': _token.refreshToken,
//             },
//           ).then((resp) {
//             final _newToken = TokenResponseModel.fromJson(resp.data);
//             tokenProvider.setToken(_newToken);
//             _originalOptions.headers['Authorization'] =
//                 'Bearer ${_newToken.accessToken}';
//             onUnlockRequests();
//             Dio()
//               ..interceptors.addAll([
//                 logInterceptor,
//                 NetworkLoggerInterceptor(),
//               ])
//               ..fetch(_originalOptions).then(
//                 (resp) => handler.resolve(resp),
//                 onError: (e) => handler.reject(e),
//               );
//           }, onError: (e) {
//             onUnlockRequests();
//             onSessionExpired();
//             return handler.next(err);
//           });
//         return;
//       }
//     }
//     return handler.next(err);
//   }

//   // @override
//   // void onResponse(
//   //   Response response,
//   //   ResponseInterceptorHandler handler,
//   // ) async {
//   //   // het han identifier
//   //   if (response.data['status'] == -1) {
//   //     final _originalOptions = response.requestOptions;
//   //     await keyRsaTripletProvider.genarateNewKey();
//   //     Map<String, dynamic> param = HashMap();
//   //     param.putIfAbsent("public_key", () => keyRsaTripletProvider.publicKey);
//   //     onLockRequests();
//   //     Dio()
//   //       ..options = BaseOptions(
//   //         baseUrl: baseUrl,
//   //         contentType: 'application/x-www-form-urlencoded',
//   //         headers: {
//   //           ..._originalOptions.headers,
//   //           'Accept': 'application/json',
//   //         },
//   //       )
//   //       ..interceptors.addAll([
//   //         logInterceptor,
//   //         NetworkLoggerInterceptor(),
//   //       ])
//   //       ..post(
//   //         EndPoints.config,
//   //         data: param,
//   //       ).then((res) => );
//   //   }
//   // }

//   /// If the token is not existing or the error not relate to token issue, continue with the error
//   bool _shouldRefreshToken(TokenResponse token, int? errorCode) =>
//       token.accessToken.isNotNullOrEmpty &&
//       token.refreshToken.isNotNullOrEmpty &&
//       (errorCode == 401 || errorCode == 403);
// }
