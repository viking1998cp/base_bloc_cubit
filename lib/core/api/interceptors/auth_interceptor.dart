// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:lichviet_modules/core/core.dart';
// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:lichviet_modules/core/utils/devide_info.dart';
// import '../../../data/datasource/local/token_provider.dart';

// /// Add access_token, more needed params into request's header
// class AuthInterceptor extends Interceptor {
//   final String _tokenProvider;

//   AuthInterceptor(this._tokenProvider);

//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     // final apiToken = _tokenProvider.token;
//     final Map<String, String> headers = {};
//     // if (apiToken != null && apiToken.accessToken.isNotNullOrEmpty) {
//     //   headers['Authorization'] = 'Bearer ${apiToken.accessToken}';
//     // }

//     headers['apikey'] = 'rklHRCArf7Jj8uR8t1sLLWFcwObH3f6rHlPY1Zvkz40GfaP0Pb';
//     //  headers['apikey'] = 'rklHRCArf7Jj8uR8t1sLLWFcwObH3f6rHlPY1Zvkz40GfaP0Pb';
//     //   headers['apikey'] = 'rklHRCArf7Jj8uR8t1sLLWFcwObH3f6rHlPY1Zvkz40GfaP0Pb';
//     final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
//     AndroidDeviceInfo? androidDeviceInfo;
//     IosDeviceInfo? iosInfo;
//     if (Platform.isAndroid) {
//       androidDeviceInfo = await deviceInfoPlugin.androidInfo;
//     } else {
//       iosInfo = await deviceInfoPlugin.iosInfo;
//     }

//     headers['deviceinfo'] = DevideInfo()
//         .nameDevide(androidDeviceInfo: androidDeviceInfo, iosInfo: iosInfo);
//     headers['osinfo'] = DevideInfo().getTypeOs();
//     headers['appversion'] = await DevideInfo().getVersionCode();
//     options.headers = headers;
//     return super.onRequest(options, handler);
//   }
// }
