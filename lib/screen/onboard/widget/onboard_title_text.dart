import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class OnboardTitleText extends StatelessWidget {
  final String title;

  const OnboardTitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: CustomTextStyle.titleOne.copyWith(
          color: CustomColor.grey900Color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
