import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ClassNameText extends StatelessWidget {
  final String name;

  const ClassNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyle.headlineMedium.copyWith(
          color: CustomColor.grey800Color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
