import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class OrText extends StatelessWidget {
  const OrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'or',
      textAlign: TextAlign.center,
      style: CustomTextStyle.titleThreeNormal.copyWith(color: CustomColor.grey600Color),
    );
  }
}
