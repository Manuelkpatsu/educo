import 'package:equatable/equatable.dart';

import 'lecturer.dart';

class Course extends Equatable {
  final int id;
  final String name;
  final String image;
  final Lecturer lecturer;
  final int totalEnrollment;
  final double rating;

  const Course({
    required this.id,
    required this.name,
    required this.image,
    required this.lecturer,
    required this.totalEnrollment,
    required this.rating,
  });

  @override
  List<Object?> get props => [id, name, image, lecturer, totalEnrollment, rating];
}
