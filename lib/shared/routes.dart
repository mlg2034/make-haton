import 'package:flutter/material.dart';
import 'package:make_haton/features/auth/ui/pages/auth_page.dart';
import 'package:make_haton/features/lesson/presentation/ui/pages/lesson_page.dart';
import 'package:make_haton/src/ui/presentation/pages/character_page/character_page.dart';
import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';
import 'package:make_haton/src/ui/presentation/pages/settings_page/settings_page.dart';
import 'package:ui_kit/ui_kit.dart';

abstract class Routes {
  static const splashPage = '/splashPage';
  static const authPage = '/authPage';
  static const homePage = '/homePage';
  static const settingsPage = '/settingsPage';
  static const learnPage = '/learnPage';
  static const practicePage = '/practicePage';
  static const characterPage = '/characterPage';
}

final Map<String, Widget Function(BuildContext context, Object? arguments)> pageBuilders = {
  Routes.homePage: (context, arguments) => const HomePage(),
  Routes.authPage: (context, arguments) => const AuthPage(),
  Routes.settingsPage: (context, arguments) => const SettingsPage(),
  Routes.learnPage: (context, arguments) => const LessonPage(),
  Routes.characterPage: (context, arguments) => const CharacterPage(),
};

final Map<
    NavigationAnimationType,
    Route<Object> Function(
      Widget Function(BuildContext context, Object? arguments) pageBuilder,
      Object? arguments,
      String? routeName,
    )> pageRouteAnimationBuilders = {
  NavigationAnimationType.fromSplash: (
    pageBuilder,
    arguments,
    routeName,
  ) {
    return PageRouteBuilder(
      pageBuilder: (context, __, ___) {
        return pageBuilder(context, arguments);
      },
      settings: RouteSettings(
        name: routeName,
        arguments: arguments,
      ),
      transitionDuration: const Duration(milliseconds: 1600),
      transitionsBuilder: (_, a, __, c) {
        return Stack(
          children: [
            FadeTransition(
              opacity: CurvedAnimation(
                parent: a,
                curve: const Interval(0, 0.3),
              ),
              child: const ColoredBox(
                color: AppColors.primary,
                child: SizedBox.expand(),
              ),
            ),
            FadeTransition(
              opacity: CurvedAnimation(
                parent: a,
                curve: const Interval(0.5, 1),
              ),
              child: c,
            ),
          ],
        );
      },
    );
  },
  NavigationAnimationType.none: (
    pageBuilder,
    arguments,
    routeName,
  ) {
    return MaterialPageRoute(
      builder: (context) => pageBuilder(context, arguments),
      settings: RouteSettings(
        name: routeName,
        arguments: arguments,
      ),
    );
  },
  NavigationAnimationType.fade: (
    pageBuilder,
    arguments,
    routeName,
  ) {
    return PageRouteBuilder(
      pageBuilder: (context, __, ___) {
        return pageBuilder(context, arguments);
      },
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
      settings: RouteSettings(
        name: routeName,
        arguments: arguments,
      ),
    );
  },
};

enum NavigationAnimationType {
  fromSplash,
  none,
  fade,
}
