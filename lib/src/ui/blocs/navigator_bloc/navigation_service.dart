import 'package:flutter/material.dart';
import 'package:make_haton/shared/routes.dart';

class NavigatorManager {
  final GlobalKey<NavigatorState> _navigatorKey;

  NavigatorState? get _navigatorState => _navigatorKey.currentState;

  NavigatorManager(this._navigatorKey);

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  Future<Object?>? pushNamed(
    String route, {
    Object? arguments,
    NavigationAnimationType navigationAnimationType = NavigationAnimationType.none,
  }) {
    return _push(
      route: route,
      navigationAnimationType: navigationAnimationType,
      navigationFunction: (route) => _navigatorState?.push(
        route,
      ),
      arguments: arguments,
    );
  }

  Future<Object?>? pushNamedAndRemoveUntil(
    String route, {
    NavigationAnimationType navigationAnimationType = NavigationAnimationType.none,
    RoutePredicate? predicate,
    Object? arguments,
  }) {
    return _push(
      route: route,
      navigationAnimationType: navigationAnimationType,
      navigationFunction: (route) => _navigatorState?.pushAndRemoveUntil(
        route,
        predicate ?? (route) => false,
      ),
      arguments: arguments,
    );
  }

  Future<Object?>? pushReplacementNamed(
    String route, {
    NavigationAnimationType navigationAnimationType = NavigationAnimationType.none,
    Object? arguments,
  }) {
    return _push(
      route: route,
      navigationAnimationType: navigationAnimationType,
      navigationFunction: (route) => _navigatorState?.pushReplacement(route),
      arguments: arguments,
    );
  }

  Future<Object?>? _push({
    required String route,
    required NavigationAnimationType navigationAnimationType,
    required Object? arguments,
    required Future<Object?>? Function(Route<Object> route) navigationFunction,
  }) {
    final pageRoute = pageBuilders[route];

    final pageRoutesBuilder = pageRouteAnimationBuilders[navigationAnimationType];

    if (pageRoute != null && pageRoutesBuilder != null) {
      return navigationFunction(pageRoutesBuilder(pageRoute, arguments, route));
    }

    return null;
  }

  void pop<T extends Object?>([T? result]) {
    _navigatorState!.pop(result);
  }

  void popUntil(RoutePredicate? predicate) {
    _navigatorKey.currentState!.popUntil(predicate ?? (route) => false);
  }
}
