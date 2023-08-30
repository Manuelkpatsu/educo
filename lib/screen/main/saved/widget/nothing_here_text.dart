import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class NothingHereText extends StatelessWidget {
  const NothingHereText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nothing is here!',
      textAlign: TextAlign.center,
      style: CustomTextStyle.titleOne.copyWith(letterSpacing: 0),
    );
  }
}
