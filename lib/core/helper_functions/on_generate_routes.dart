import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'package:fruits_hub/features/splash/presentation/pages/splash_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) {
          return const SplashPage();
        },
      );
       case OnBoardingPage.routeName:
      return MaterialPageRoute(
        builder: (context) {
          return const OnBoardingPage();
        },
      );
    default:
      return MaterialPageRoute(
        builder: (context) {
          return const Scaffold();
        },
      );
  }
}
