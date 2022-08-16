import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:lichviet_modules/di/native_module.dart';
import 'package:lichviet_modules/di/remote_module.dart';
import '../core/api/api_config.dart';
import 'apis_module.dart';
import 'cubit_module.dart';
import 'local_module.dart';
import 'network_module.dart';
import 'repository_module.dart';
import 'usecase_module.dart';

///
/// Setup DI
///

Future<void> setupDi(ApiConfig config) async {
  final getIt = GetIt.I;

  await networkModule(getIt);
  await localModule(getIt);
  await apisModule(getIt, config);
  await repositoryModule(getIt);
  await usecaseModule(getIt);
  await cubitModule(getIt);
  await nativeModule(getIt);
  await remoteModule(getIt);
}
