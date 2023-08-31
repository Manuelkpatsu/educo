import 'package:educo/model/course_type.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ClassType extends StatelessWidget {
  final CourseType courseType;

  const ClassType({super.key, required this.courseType});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        decoration: BoxDecoration(
          color: CustomColor.tagColor,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Text(
          courseType.name.toUpperCase(),
          style: CustomTextStyle.captionTwo.copyWith(
            color: Colors.white,
            letterSpacing: 0.12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
