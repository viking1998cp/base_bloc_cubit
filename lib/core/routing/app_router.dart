import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_routing.dart';
import 'base/routes.dart';

class AppNavigator extends NavigatorRouteDelegate<AppPageRoute> {
  AppNavigator(AppPageRoute initialPath) : super(initialPath);

  factory AppNavigator.of(BuildContext context) =>
      Provider.of<AppNavigator>(context, listen: false);
}

extension AppNavigatorExtension on BuildContext {
  AppNavigator get navigator => AppNavigator.of(this);

  bool pop() => navigator.pop();

  void pushTo(AppPageRoute path) => navigator.pushTo(path);

  void pushAndPopTo(AppPageRoute pushPath, AppPageRoute popToPath) =>
      navigator.pushAndPopTo(pushPath, popToPath);

  void replaceLast(AppPageRoute path) => navigator.replaceLast(path);
}
