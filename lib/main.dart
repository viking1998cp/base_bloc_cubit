import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lichviet_modules/core/routing/app_router.dart';
import 'package:lichviet_modules/core/routing/app_router_parser.dart';
import 'package:lichviet_modules/core/utils/device_dimension_utils.dart';

import 'package:lichviet_modules/di/di.dart';
import 'package:lichviet_modules/presentation/widgets/network_logger/network_utils.dart';
import 'package:provider/provider.dart';
import 'core/api/api_config.dart';
import 'core/routing/app_routing.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NetworkLoggerUtils().init(
    isEnable: true,
  );

  await setupDi(ApiConfig(env: 'env', baseUrl: 'http://next.lichviet.org'));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouterInformationParser _routeParser =
      AppRouterInformationParser();
  late final AppNavigator _router;
  @override
  void initState() {
    final initRouter =
        WidgetsBinding.instance?.platformDispatcher.defaultRouteName;
    _router = AppNavigator(getInitRouter(initRouter));
    super.initState();
  }

  AppPageRoute getInitRouter(initRouter) {
    switch (initRouter) {
      case '/home-screen':
        return AppPageRoute.homeScreen();
      default:
        return AppPageRoute.homeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<AppNavigator>.value(
          value: _router,
        ),
        // BlocProvider<InitCubit>(
        //     create: (context) =>
        //         _initCubit..getPublicAndPrivateKey(refresKey: true)),
      ],
      child: DeviceDimentionUtilInit(
        builder: (_) => MaterialApp.router(
          routeInformationParser: _routeParser,
          routerDelegate: _router,
          title: 'Lịch Việt',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ),
      ),
    );
  }
}
