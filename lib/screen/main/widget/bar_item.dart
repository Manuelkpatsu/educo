import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  final String image;

  const BarItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 28,
      width: 28,
      fit: BoxFit.contain,
    );
  }
}
