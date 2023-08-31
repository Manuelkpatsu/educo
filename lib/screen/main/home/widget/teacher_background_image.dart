import 'package:flutter/material.dart';

class TeacherBackgroundImage extends StatelessWidget {
  const TeacherBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        child: Image.asset(
          'assets/images/teacher-background.png',
          height: 146,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
