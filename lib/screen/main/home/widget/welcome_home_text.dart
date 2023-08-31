import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class WelcomeBackText extends StatelessWidget {
  final String name;

  const WelcomeBackText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hola, $name!',
      style: CustomTextStyle.titleOne.copyWith(color: CustomColor.grey900Color),
    );
  }
}
