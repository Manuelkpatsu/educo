import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CheckEmailText extends StatelessWidget {
  const CheckEmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Check your email',
      textAlign: TextAlign.center,
      style: CustomTextStyle.titleOne.copyWith(letterSpacing: 0, fontWeight: FontWeight.w600),
    );
  }
}
