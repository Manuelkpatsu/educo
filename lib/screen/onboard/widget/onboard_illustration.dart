import 'package:flutter/material.dart';

class OnboardIllustration extends StatelessWidget {
  final String image;

  const OnboardIllustration({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 210,
      height: 196,
      fit: BoxFit.contain,
    );
  }
}
