import 'package:flutter/material.dart';

class EmptyStateImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const EmptyStateImage({
    super.key,
    required this.image,
    this.width = 231,
    this.height = 210,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: width, height: height, fit: BoxFit.contain);
  }
}
