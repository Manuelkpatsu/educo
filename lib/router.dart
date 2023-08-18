import 'package:flutter/material.dart';

import 'screen/auth/login/login_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/sign_up_form/sign_up_form_screen.dart';
import 'screen/onboard/onboard_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());
    case SignUpFormScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpFormScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      );
  }
}
