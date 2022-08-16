import 'package:get_it/get_it.dart';
import 'package:lichviet_modules/core/core.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

Future<void> networkModule(GetIt getIt) async {
  getIt.registerLazySingleton<NetworkProvider>(
      () => NetworkProvider(Connectivity()));
}
