import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CourseLecturerNameText extends StatelessWidget {
  final String name;

  const CourseLecturerNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: CustomTextStyle.captionOne.copyWith(color: CustomColor.grey800Color),
    );
  }
}
