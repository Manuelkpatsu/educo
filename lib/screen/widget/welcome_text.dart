import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String message;

  const WelcomeText({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
      style: CustomTextStyle.titleOne.copyWith(
        color: CustomColor.grey900Color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
