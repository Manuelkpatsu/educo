import 'package:educo/model/course.dart';
import 'package:educo/model/lecturer.dart';
import 'package:flutter/material.dart';

import 'saved_list.dart';
import 'saved_list_empty_state.dart';

class SavedScreen extends StatefulWidget {
  static const routeName = '/saved';

  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  final List<Course> _savedCourses = [
    const Course(
      id: 5,
      name: 'Adobe illustrator for all beginner artist',
      lecturer: Lecturer(id: 1, name: 'Samuel Doe'),
      totalEnrollment: 4000,
      rating: 4.7,
      image: 'assets/images/courses/5.png',
    ),
    const Course(
      id: 6,
      name: 'Digital illustration technique for procreate',
      lecturer: Lecturer(id: 2, name: 'Sarah Morry'),
      totalEnrollment: 2500,
      rating: 4.0,
      image: 'assets/images/courses/6.png',
    ),
    const Course(
      id: 7,
      name: 'Learn how to draw cartoon face in easy way!',
      lecturer: Lecturer(id: 2, name: 'Sarah Morry'),
      totalEnrollment: 1000,
      rating: 4.2,
      image: 'assets/images/courses/7.png',
    ),
    const Course(
      id: 8,
      name: 'Sketch book essential for everyone!',
      lecturer: Lecturer(id: 2, name: 'Sarah Morry'),
      totalEnrollment: 2000,
      rating: 4.0,
      image: 'assets/images/courses/8.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _savedCourses.isEmpty
        ? const SavedListEmptyState()
        : SavedList(savedCourses: _savedCourses);
  }
}
