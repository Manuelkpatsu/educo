import 'package:flutter/material.dart';

class ClassThumbnail extends StatelessWidget {
  final String image;

  const ClassThumbnail({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        image,
        width: double.infinity,
        height: 140,
        fit: BoxFit.cover,
      ),
    );
  }
}
