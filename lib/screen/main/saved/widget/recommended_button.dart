import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class RecommendedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const RecommendedButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      backgroundColor: CustomColor.grey50Color,
      foregroundColor: Colors.black,
      textStyle: CustomTextStyle.subHeadMedium,
      widget: const Text('Recommended'),
      borderRadius: 4,
      width: 122,
      height: 41,
    );
  }
}
