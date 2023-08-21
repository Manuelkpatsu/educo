import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveBarItem extends StatelessWidget {
  final String image;

  const ActiveBarItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return image.contains('svg')
        ? SvgPicture.asset(
            image,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          )
        : Image.asset(
            image,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          );
  }
}
