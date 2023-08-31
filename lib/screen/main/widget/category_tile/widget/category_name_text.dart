import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CategoryNameText extends StatelessWidget {
  final String name;

  const CategoryNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 23, right: 23, bottom: 25),
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x00000000),
            Color(0x04000000),
            Color(0x0e000000),
            Color(0x1e000000),
            Color(0x33000000),
            Color(0x4a000000),
            Color(0x64000000),
            Color(0x80000000),
            Color(0x9b000000),
            Color(0xb5000000),
            Color(0xcc000000),
            Color(0xe1000000),
            Color(0xf1000000),
            Color(0xfb000000),
            Colors.black,
          ],
        ),
      ),
      child: Text(
        name,
        maxLines: null,
        textAlign: TextAlign.center,
        style: CustomTextStyle.titleThreeMedium.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
