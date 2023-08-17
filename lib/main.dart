import 'package:flutter/material.dart';

import 'router.dart';
import 'screen/onboard/onboard_screen.dart';
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
      initialRoute: OnboardScreen.routeName,
      onGenerateRoute: generateRoute,
    );
  }
}
