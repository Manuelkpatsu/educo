import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class TotalRatingsText extends StatelessWidget {
  final int totalRatings;

  const TotalRatingsText({super.key, required this.totalRatings});

  @override
  Widget build(BuildContext context) {
    return Text(
      '($totalRatings)',
      style: CustomTextStyle.captionThree.copyWith(color: CustomColor.grey400Color),
    );
  }
}
