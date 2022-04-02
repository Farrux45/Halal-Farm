import 'package:flutter/material.dart';
import 'package:lesson_x/screens/home_page.dart';
import 'package:lesson_x/screens/language_page.dart';
import 'package:lesson_x/screens/onBoarding_page.dart';
import 'package:lesson_x/screens/sing_up_page.dart';
import 'package:lesson_x/screens/view_folder/registration_page.dart';
import 'package:lesson_x/screens/view_folder/sms_page.dart';

class MyRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case '/lang':
        return MaterialPageRoute(
          builder: (_) => const LanguagePage(),
        );
      case '/-onBoarding':
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );
      case '/signUp':
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
        case '/viewPage':
        return MaterialPageRoute(
          builder: (_) => const RegistrationPage(),
        );
        case '/smsPage':
        return MaterialPageRoute(
          builder: (_) => const SmsPage(),
        );
    }
  }
}
