import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ClassLecturerNameText extends StatelessWidget {
  final String name;

  const ClassLecturerNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyle.captionTwo.copyWith(color: CustomColor.grey600Color),
      ),
    );
  }
}
