import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ClassRatingText extends StatelessWidget {
  final double rating;

  const ClassRatingText({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Text(
      rating.toStringAsFixed(1),
      style: CustomTextStyle.captionThree.copyWith(color: CustomColor.grey400Color),
    );
  }
}
