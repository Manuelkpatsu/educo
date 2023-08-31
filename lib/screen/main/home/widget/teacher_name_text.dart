import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class TeacherNameText extends StatelessWidget {
  final String name;

  const TeacherNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: CustomTextStyle.titleThreeNormal.copyWith(color: CustomColor.grey800Color),
    );
  }
}
