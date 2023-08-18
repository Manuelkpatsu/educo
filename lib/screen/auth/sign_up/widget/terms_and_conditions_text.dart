import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        'By signing up you are agreed with our\nfriendly terms and condition.',
        textAlign: TextAlign.center,
        style: CustomTextStyle.subHeadNormal.copyWith(color: CustomColor.grey700Color),
      ),
    );
  }
}
