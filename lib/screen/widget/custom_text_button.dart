import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Color foregroundColor;
  final TextStyle textStyle;
  final String action;
  final double borderRadius;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    this.foregroundColor = CustomColor.primary600Color,
    this.textStyle = CustomTextStyle.textMedium,
    required this.action,
    this.borderRadius = 6,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
        textStyle: textStyle,
        minimumSize: Size(width!, height!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
      ),
      child: Text(action),
    );
  }
}
