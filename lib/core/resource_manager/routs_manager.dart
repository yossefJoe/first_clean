import 'package:first_test/features/home/homepage.dart';
import 'package:first_test/main_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homePage = '/homepage';
  static const String mainScreen = '/mainscreen';
}

class RouteGenerator {
  static String currentContext = '';

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainScreen:
        currentContext = Routes.mainScreen;
        return MaterialPageRoute(
            settings: settings, builder: (_) => MainScreen());
      case Routes.homePage:
        currentContext = Routes.homePage;
        return MaterialPageRoute(
            settings: settings, builder: (_) => HomePage());
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Container(),
    );
  }
}
