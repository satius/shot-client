import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shot_client/pages/redirect/redirect_page.dart';
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
    final isVerified = (settings.arguments as RouteArguments?)?.isVerified ?? false;
    if (!isVerified) {
      return createPageRoute(settingsName: settings.name, page: RedirectPage(settings.name));
    }

    switch (settings.name) {
      case homePage:
      case signInPage:
        if (!isVerified) {
          return createPageRoute(settingsName: settings.name, page: RedirectPage(settings.name));
        } else {
          return createPageRoute(settingsName: settings.name, page: SignInPage());
        }

      case signUpPage:
        if (!isVerified) {
          return createPageRoute(settingsName: settings.name, page: RedirectPage(settings.name));
        } else {
          return createPageRoute(settingsName: settings.name, page: SignUpPage());
        }

      case setUpPage:
        if (!isVerified) {
          return createPageRoute(settingsName: settings.name, page: RedirectPage(settings.name));
        } else {
          return createPageRoute(settingsName: settings.name, page: SetUpPage());
        }

      default:
        return createPageRoute(settingsName: settings.name, page: RedirectPage(settings.name));
    }
  }

  static Route<dynamic> createPageRoute({String? settingsName, required Widget page}) {
    return PageRouteBuilder(
        settings: RouteSettings(name: settingsName),
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
  }
}

class RouteArguments {
  final bool isVerified;

  RouteArguments(this.isVerified);
}
