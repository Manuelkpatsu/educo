import 'package:flutter/material.dart';

import 'teacher_name_text.dart';
import 'teacher_occupation_text.dart';

class TeacherInfoWidget extends StatelessWidget {
  final String name;
  final String occupation;

  const TeacherInfoWidget({super.key, required this.name, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeacherNameText(name: name),
            TeacherOccupationText(occupation: occupation),
          ],
        ),
      ),
    );
  }
}
