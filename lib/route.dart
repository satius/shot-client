import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shot_client/pages/signIn/sign_in_page.dart';
import 'package:shot_client/pages/signUp/sign_up_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String signInPage = '/signin';
  static const String signUpPage = '/signup';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return createPageRoute(settingsName: settings.name, page: classifyHomePage());
      case signInPage:
        return createPageRoute(settingsName: settings.name, page: SignInPage());
      case signUpPage:
        return createPageRoute(settingsName: settings.name, page: SignUpPage());

      default:
        return createPageRoute(settingsName: homePage, page: classifyHomePage());
    }
  }

  static Widget classifyHomePage() {
    // TODO: FIrebase認証状態を参照してuser(onePerson)/signinページを出し分ける
    return SignInPage();
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
