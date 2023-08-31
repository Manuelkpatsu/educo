import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CategoryTitleText extends StatelessWidget {
  final String text;

  const CategoryTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        maxLines: null,
        style: CustomTextStyle.titleTwo.copyWith(
          color: CustomColor.grey800Color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
