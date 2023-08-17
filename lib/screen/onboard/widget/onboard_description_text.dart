import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class OnboardDescriptionText extends StatelessWidget {
  final String description;

  const OnboardDescriptionText({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: CustomTextStyle.subHeadNormal.copyWith(color: CustomColor.grey300Color),
      ),
    );
  }
}
