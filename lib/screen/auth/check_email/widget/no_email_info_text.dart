import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class NoEmailInfoText extends StatelessWidget {
  const NoEmailInfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Didn\'t get any email? Check your spam\nfolder or try again with a valid email.',
      textAlign: TextAlign.center,
      style: CustomTextStyle.subHeadNormal.copyWith(
        letterSpacing: 0.14,
        color: CustomColor.grey500Color,
        height: 1.4,
      ),
    );
  }
}
