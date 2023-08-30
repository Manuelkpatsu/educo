import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class NothingInfoText extends StatelessWidget {
  const NothingInfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'We found nothing in your save list! Want\nto have some? Try something best',
      textAlign: TextAlign.center,
      style: CustomTextStyle.subHeadNormal.copyWith(
        letterSpacing: 0,
        height: 1.4,
        color: Colors.black.withOpacity(0.4),
      ),
    );
  }
}
