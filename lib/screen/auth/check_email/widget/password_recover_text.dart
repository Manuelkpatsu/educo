import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class PasswordRecoverText extends StatelessWidget {
  const PasswordRecoverText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'We\'ve sent a password recover instruction\nto your email',
      textAlign: TextAlign.center,
      style: CustomTextStyle.subHeadNormal.copyWith(
        letterSpacing: 0,
        color: Colors.black.withOpacity(0.4),
        height: 1.4,
      ),
    );
  }
}
