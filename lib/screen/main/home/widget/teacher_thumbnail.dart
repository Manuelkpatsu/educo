import 'package:flutter/material.dart';

class TeacherThumbnail extends StatelessWidget {
  final int id;

  const TeacherThumbnail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 8,
      right: 8,
      bottom: 0,
      child: Image.asset(
        'assets/images/teachers/$id.png',
        height: 231,
        width: double.infinity,
      ),
    );
  }
}
