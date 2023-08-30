import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EnrollmentStat extends StatelessWidget {
  final int totalEnrollment;

  const EnrollmentStat({super.key, required this.totalEnrollment});

  @override
  Widget build(BuildContext context) {
    final formattedNumber = NumberFormat.compact().format(totalEnrollment).toLowerCase();

    return Row(
      children: [
        const Icon(Icons.person_outline, size: 14, color: CustomColor.grey500Color),
        Text(
          '$formattedNumber students',
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
