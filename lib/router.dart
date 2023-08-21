import 'package:flutter/material.dart';

import 'screen/auth/check_email/check_email_screen.dart';
import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/sign_up_form/sign_up_form_screen.dart';
import 'screen/main/app.dart';
import 'screen/main/home/home_screen.dart';
import 'screen/main/profile/profile_screen.dart';
import 'screen/main/saved/saved_screen.dart';
import 'screen/main/search/search_screen.dart';
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
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
    case CheckEmailScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CheckEmailScreen());
    case ResetPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
    case MainApp.routeName:
      return MaterialPageRoute(builder: (_) => const MainApp());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case SearchScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SearchScreen());
    case SavedScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SavedScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
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
