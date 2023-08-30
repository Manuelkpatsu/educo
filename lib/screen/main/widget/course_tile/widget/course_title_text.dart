import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CourseTitleText extends StatelessWidget {
  final String name;

  const CourseTitleText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: CustomTextStyle.titleThreeMedium.copyWith(
        color: CustomColor.grey800Color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
