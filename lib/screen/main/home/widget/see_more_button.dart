import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SeeMoreButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: CustomColor.grey500Color.withOpacity(0.1),
      onTap: onTap,
      child: Text(
        'See more',
        style: CustomTextStyle.subHeadNormal.copyWith(color: CustomColor.grey500Color),
      ),
    );
  }
}
