import 'package:educo/model/lecturer.dart';
import 'package:flutter/material.dart';

import 'widget/teacher_background_image.dart';
import 'widget/teacher_info_widget.dart';
import 'widget/teacher_thumbnail.dart';

class TeacherTile extends StatelessWidget {
  final Lecturer teacher;
  final VoidCallback? onTap;

  TeacherTile({
    Key? key,
    required this.teacher,
    required this.onTap,
  }) : super(key: Key('${teacher.id}'));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width, height: 231),
          const TeacherBackgroundImage(),
          TeacherThumbnail(id: teacher.id),
          TeacherInfoWidget(name: teacher.name, occupation: teacher.occupation),
        ],
      ),
    );
  }
}
