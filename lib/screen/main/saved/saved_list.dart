import 'package:educo/model/course.dart';
import 'package:educo/screen/main/widget/app_bar_title.dart';
import 'package:educo/screen/main/widget/course_tile/course_tile.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class SavedList extends StatelessWidget {
  final List<Course> savedCourses;

  const SavedList({super.key, required this.savedCourses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'My save list'),
        titleTextStyle: CustomTextStyle.titleTwo.copyWith(color: CustomColor.grey900Color),
      ),
      body: ListView.builder(
        itemCount: savedCourses.length,
        itemBuilder: (ctx, index) {
          Course course = savedCourses[index];

          return CourseTile(course: course, onPressed: () {});
        },
      ),
    );
  }
}
