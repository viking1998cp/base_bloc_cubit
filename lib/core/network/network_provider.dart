import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();

  Future<bool> isNotConnected();
}

class NetworkProvider implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkProvider(this._connectivity);

  @override
  Future<bool> isConnected() {
    return _connectivity
        .checkConnectivity()
        .then((value) => value != ConnectivityResult.none);
  }

  @override
  Future<bool> isNotConnected() async {
    return !(await isConnected());
  }
}
