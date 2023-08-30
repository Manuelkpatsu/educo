import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class RatingStat extends StatelessWidget {
  final double rating;

  const RatingStat({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star_rounded, size: 14, color: CustomColor.starFilledColor),
        Text(
          rating.toStringAsFixed(1),
          style: CustomTextStyle.captionTwo.copyWith(
            fontWeight: FontWeight.w300,
            color: CustomColor.grey500Color,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
