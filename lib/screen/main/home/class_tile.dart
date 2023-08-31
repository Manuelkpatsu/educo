import 'package:educo/model/course.dart';
import 'package:flutter/material.dart';

import 'widget/class_lecturer_name_text.dart';
import 'widget/class_name_text.dart';
import 'widget/class_rating_widget.dart';
import 'widget/class_thumbnail.dart';
import 'widget/class_type.dart';
import 'widget/total_ratings_text.dart';

class ClassTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onTap;

  ClassTile({
    Key? key,
    required this.course,
    required this.onTap,
  }) : super(key: Key('${course.id}'));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClassThumbnail(image: course.image),
              ClassType(courseType: course.courseType),
            ],
          ),
          const SizedBox(height: 12),
          ClassNameText(name: course.name),
          const SizedBox(height: 8),
          ClassLecturerNameText(name: course.lecturer.name),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                CourseRatingWidget(rating: course.rating),
                const SizedBox(width: 10),
                TotalRatingsText(totalRatings: course.totalRatings),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
