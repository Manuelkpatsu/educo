import 'package:flutter/material.dart';

class CourseThumbnail extends StatelessWidget {
  final String image;

  const CourseThumbnail({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        image,
        width: 80,
        height: 92,
        fit: BoxFit.contain,
      ),
    );
  }
}
