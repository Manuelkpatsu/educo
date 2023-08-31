import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String image;
  final double radius;

  const CircularImage({super.key, required this.image, this.radius = 22});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(image),
    );
  }
}
