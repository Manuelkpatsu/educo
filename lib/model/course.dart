import 'package:equatable/equatable.dart';

import 'course_type.dart';
import 'lecturer.dart';

class Course extends Equatable {
  final int id;
  final String name;
  final String image;
  final Lecturer lecturer;
  final int totalEnrollment;
  final double rating;
  final int totalRatings;
  final CourseType courseType;

  const Course({
    required this.id,
    required this.name,
    required this.image,
    required this.lecturer,
    required this.totalEnrollment,
    required this.rating,
    required this.totalRatings,
    required this.courseType,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        lecturer,
        totalEnrollment,
        rating,
        totalRatings,
        courseType,
      ];
}
