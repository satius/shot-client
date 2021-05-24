import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shot_client/pages/setup/set_up_page.dart';
import 'package:shot_client/pages/signIn/sign_in_page.dart';
import 'package:shot_client/pages/signUp/sign_up_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String signInPage = '/signin';
  static const String signUpPage = '/signup';
  static const String setUpPage = '/setup';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
      case signInPage:
        final onePersonUserPageRoute = createOnePersonUserPageRoute();
        if (onePersonUserPageRoute != null) {
          return onePersonUserPageRoute;
        } else {
          return createPageRoute(settingsName: settings.name, page: SignInPage());
        }

      case signUpPage:
        final onePersonUserPageRoute = createOnePersonUserPageRoute();
        if (onePersonUserPageRoute != null) {
          return onePersonUserPageRoute;
        } else {
          return createPageRoute(settingsName: settings.name, page: SignUpPage());
        }

      case setUpPage:
        if (isSetUpPageAvailable()) {
          return createPageRoute(settingsName: settings.name, page: SetUpPage());
        } else {
          final onePersonUserPageRoute = createOnePersonUserPageRoute();
          if (onePersonUserPageRoute != null) {
            return onePersonUserPageRoute;
          } else {
            return createPageRoute(settingsName: homePage, page: SignInPage());
          }
        }

      default:
        final defaultPageRoute = createDefaultPageRoute();
        if (defaultPageRoute != null) {
          return defaultPageRoute;
        } else {
          final onePersonUserPageRoute = createOnePersonUserPageRoute();
          if (onePersonUserPageRoute != null) {
            return onePersonUserPageRoute;
          } else {
            return createPageRoute(settingsName: settings.name, page: SignInPage());
          }
        }
    }
  }

  static bool isSetUpPageAvailable() {
    // TODO: FIrebase認証状態(currentUserがいる)、かつShotIdが未登録ならtrue
    return true;
  }

  static bool isAuthorized() {
    // TODO: FIrebase認証状態(currentUserがいる)ならtrue
    return false;
  }

  static Route<dynamic>? createOnePersonUserPageRoute() {
    // TODO: CurrentUserのauthUidでuserRepositoryからshotIdを取得
    final shotId = "";
    // return createUserPageRoute(settingsName: "/$shotId");
    return null;
  }

  static Route<dynamic>? createDefaultPageRoute() {
    // TODO: CurrentUserのauthUidでuserRepositoryからshotIdを取得
    final shotId = "";
    // return createUserPageRoute(settingsName: "/$shotId");
    return null;
  }

  static Route<dynamic> createPageRoute({String? settingsName, required Widget page}) {
    return PageRouteBuilder(
        settings: RouteSettings(name: settingsName),
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
