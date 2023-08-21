import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Reset your password',
        style: CustomTextStyle.titleThreeMedium.copyWith(
          color: CustomColor.titleColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
