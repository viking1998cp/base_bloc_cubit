part of routing.base;

abstract class NavigatorRouteDelegate<PathRoute extends NavRoute>
    extends RouterDelegate<PathRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  NavigatorRouteDelegate(PathRoute initialPath) {
    _route.add(initialPath);
  }

  @override
  final GlobalKey<NavigatorState>? navigatorKey = GlobalKey();

  final List<PathRoute> _route = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(pop()),
      child: Navigator(
        key: navigatorKey,
        onPopPage: _onPopPage,
        pages: _getPages(context),
      ),
    );
  }

  List<Page> _getPages(BuildContext context) {
    return _route.map((route) => route.builder(context)).toList();
  }

  @override
  Future<void> setNewRoutePath(PathRoute configuration) async {}

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }
    return pop();
  }

  bool pop() {
    if (canPop()) {
      _route.removeLast();
      notifyListeners();
      return true;
    }
    return false;
  }

  bool canPop() {
    return _route.length > 1;
  }

  void pushTo(PathRoute path) {
    _route.add(path);
    notifyListeners();
  }

  void pushAndPopTo(PathRoute pushPath, PathRoute popToPath) {
    final index = _route.indexWhere((element) => element.id == popToPath.id);

    if (index >= 0) {
      _route.removeRange(index + 1, _route.length);
    }

    _route.add(pushPath);
    notifyListeners();
  }

  void replaceLast(PathRoute path) {
    if (_route.isNotEmpty) {
      _route.removeLast();
    }
    _route.add(path);
    notifyListeners();
  }

  void clearAndPush(PathRoute path) {
    _route
      ..clear()
      ..add(path);
    notifyListeners();
  }

  void clearAndPushMulti(List<PathRoute> paths) {
    _route
      ..clear()
      ..addAll(paths);
    notifyListeners();
  }
}
