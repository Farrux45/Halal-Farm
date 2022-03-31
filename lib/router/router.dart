import 'package:flutter/material.dart';
import 'package:lesson_x/screens/home_page.dart';
import 'package:lesson_x/screens/language_page.dart';

class MyRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashPage(),
        );
      case '/lang':
        return MaterialPageRoute(builder: (_) => LanguagePage());
    }
  }
}
