import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'router.dart';
import 'screen/onboard/onboard_screen.dart';
import 'screen/widget/logo.dart';
import 'theme/custom_color.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.theme,
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: const Logo(),
        nextScreen: const OnboardScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: CustomColor.primary600Color,
        centered: true,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
