import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class LearnTodayText extends StatelessWidget {
  const LearnTodayText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'What do you wanna learn today?',
      style: CustomTextStyle.subHeadNormal.copyWith(color: CustomColor.grey500Color, height: 1.5),
    );
  }
}
