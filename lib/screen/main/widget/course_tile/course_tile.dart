import 'package:educo/model/course.dart';
import 'package:flutter/material.dart';

import 'widget/course_image.dart';
import 'widget/course_lecturer_name_text.dart';
import 'widget/course_title_text.dart';
import 'widget/enrollment_stat.dart';
import 'widget/rating_stat.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;

  CourseTile({
    Key? key,
    required this.course,
    required this.onPressed,
  }) : super(key: Key('${course.id}'));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            CourseThumbnail(image: course.image),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CourseTitleText(name: course.name),
                  const SizedBox(height: 6),
                  CourseLecturerNameText(name: course.lecturer.name),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      EnrollmentStat(totalEnrollment: course.totalEnrollment),
                      const SizedBox(width: 25),
                      RatingStat(rating: course.rating),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
