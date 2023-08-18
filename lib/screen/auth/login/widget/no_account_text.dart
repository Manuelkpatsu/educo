import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Don\'t have an account?',
      textAlign: TextAlign.center,
      style: CustomTextStyle.textNormal.copyWith(color: CustomColor.textColor, letterSpacing: 0),
    );
  }
}
