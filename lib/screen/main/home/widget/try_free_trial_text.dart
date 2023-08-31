import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class TryFreeTrialText extends StatelessWidget {
  const TryFreeTrialText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Try free trial to enhance\nyour creative journey!',
      textAlign: TextAlign.center,
      style: CustomTextStyle.titleTwo.copyWith(color: CustomColor.grey800Color),
    );
  }
}
