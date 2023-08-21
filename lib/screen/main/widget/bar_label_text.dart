import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class BarLabelText extends StatelessWidget {
  final String label;

  const BarLabelText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: CustomTextStyle.headlineMedium.copyWith(color: CustomColor.grey700Color),
    );
  }
}
