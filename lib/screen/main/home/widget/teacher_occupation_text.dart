import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class TeacherOccupationText extends StatelessWidget {
  final String occupation;

  const TeacherOccupationText({super.key, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Text(
      occupation,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: CustomTextStyle.subHeadNormal.copyWith(color: CustomColor.grey500Color),
    );
  }
}
