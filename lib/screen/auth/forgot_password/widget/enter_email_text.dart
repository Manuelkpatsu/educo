import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class EnterEmailText extends StatelessWidget {
  const EnterEmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Enter your email',
        style: CustomTextStyle.titleThreeMedium.copyWith(
          color: CustomColor.titleColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
